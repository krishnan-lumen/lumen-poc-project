terraform {
  required_version = ">= 1.11.4"
}

resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  project                 = var.project_id
  auto_create_subnetworks = false
  routing_mode            = var.routing_mode
}

resource "google_compute_subnetwork" "subnet_primary" {
  name          = var.subnet_primary_name
  project       = var.project_id
  ip_cidr_range = var.subnet_primary_cidr
  region        = var.region
  network       = google_compute_network.vpc.self_link

  private_ip_google_access = var.subnet_primary_private_ip_google_access
}

resource "google_compute_subnetwork" "subnet_secondary" {
  name          = var.subnet_secondary_name
  project       = var.project_id
  ip_cidr_range = var.subnet_secondary_cidr
  region        = var.region
  network       = google_compute_network.vpc.self_link

  private_ip_google_access = var.subnet_secondary_private_ip_google_access
}

