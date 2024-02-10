#cloud-config

users:
  - name: cloudservice
    uid: 2000

write_files:
  - path: /etc/systemd/system/cloudservice.service
    permissions: 0644
    owner: root
    content: |
      [Unit]
      Description=Start a MySQL container

      [Service]
      ExecStart=/usr/bin/docker run --rm -u 2000 --name=mysqlcontainer -p 3306:3306 -e MYSQL_ROOT_PASSWORD=${mysql_root_password} mysql:latest
      ExecStop=/usr/bin/docker stop mysqlcontainer

runcmd:
  - systemctl daemon-reload
  - systemctl start cloudservice.service
