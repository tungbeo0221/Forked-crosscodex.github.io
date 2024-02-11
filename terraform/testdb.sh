#!/usr/bin/env bash

current_script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

HOST=$(terraform output --state="$current_script_dir/.terraform/terraform.tfstate" --json | jq --raw-output .core_ip.value)
PORT='3306'
USER='root'
PASSWORD=$(cat "$current_script_dir/db.password")

# Check if mycli is installed
if ! command -v mycli &>/dev/null; then
  echo "mycli could not be found, please install it first."
  exit 1
fi

# Try to connect to the MySQL server.
if mycli -h "$HOST" -P "$PORT" -u "$USER" -p"$PASSWORD" -e "SELECT 1" >/dev/null; then
  echo "Successfully connected to the MySQL server. The credentials are correct."
else
  echo "Failed to connect to the MySQL server. Please check your credentials."
fi
