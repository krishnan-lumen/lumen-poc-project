variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}

variable "region" {
  description = "The default GCP region."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The default GCP zone."
  type        = string
  default     = "us-central1-a"
}

provider "google" {
  project                     = var.project_id
  region                      = var.region
  zone                        = var.zone
  impersonate_service_account = "terraform-deployer@project-f2dfb5e6-8e05-489f-97a.iam.gserviceaccount.com"
}

