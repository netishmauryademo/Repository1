terraform { 
			backend "local" {} 
			}
locals {
  standard_tags = {
    Component   = "user-service"
    Environment = "production"
  }
}
provider "google" {
alias = "uscentral1"
project = var.gcp_projectid
credentials = file("${var.path}")
region = "us-central1"
}
variable "gcp_projectid" {
default = ""
}
variable "path" {
default = ""
}
resource "google_compute_instance" "instance1" {
name = "instance1"
provider = google.uscentral1
machine_type = "e2-medium"
zone = "us-central1-a"
boot_disk {
auto_delete = "true"
initialize_params {
image = "debian-cloud/debian-9"
}
}
network_interface {
network = "default"
access_config {
}
}
}
