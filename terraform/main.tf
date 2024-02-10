terraform {
  cloud {
    organization = "dat267"
    workspaces {
      name = "polygon-triage-stole"
    }
  }
}

provider "google" {
  project = var.PROJECT_NAME
  region  = "us-west1"
  zone    = "us-west1-b"
}

resource "google_compute_disk" "core_boot_disk" {
  name  = "core-boot-disk"
  type  = "pd-standard"
  zone  = "us-west1-b"
  image = "projects/cos-cloud/global/images/family/cos-109-lts"
  size  = 30
}

resource "google_compute_firewall" "mysql" {
  name    = "allow-mysql"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow traffic from anywhere

  target_tags = ["mysql-server"]
}

data "template_file" "user_data" {
  template = file("${path.module}/cloud-init.tpl")

  vars = {
    mysql_root_password = file("db.password")
  }
}

resource "google_compute_instance" "core" {
  name                      = "core"
  machine_type              = "e2-micro"
  zone                      = "us-west1-b"
  allow_stopping_for_update = true
  desired_status            = "RUNNING"
  can_ip_forward            = false
  deletion_protection       = false
  enable_display            = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  metadata = {
    startup-script = join("\n", ["#!/usr/bin/env bash", "curl ${var.DDNS_UPDATE_URL}"])
    user-data      = data.template_file.user_data.rendered
    ssh-keys       = "dat:${var.SSH_PUBLIC_KEY}"
  }

  tags = ["mysql-server"]

  boot_disk {
    auto_delete = false
    device_name = "core"
    source      = google_compute_disk.core_boot_disk.self_link
    mode        = "READ_WRITE"
  }

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network = "default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "oracle@${var.PROJECT_NAME}.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  connection {
    type        = "ssh"
    user        = "dat"
    private_key = var.SSH_PRIVATE_KEY
    host        = self.network_interface[0].access_config[0].nat_ip
  }

  provisioner "file" {
    content     = join("\n", [""])
    destination = "/home/dat/.env.tmp"
    when        = create
  }
}
