terraform {
  required_version = ">= 1.11.4"

  backend "gcs" {
    bucket = "lumen-poc-bucket"
    prefix = "lb"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

