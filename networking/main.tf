# Root module for networking.
# Add calls to underlying networking modules (vpc, dns, ssl, etc.) here.

module "vpc" {
  source = "./vpc"

  project_id = var.project_id
  region     = var.region

  vpc_name = var.vpc_name

  subnet_primary_name  = var.subnet_primary_name
  subnet_primary_cidr  = var.subnet_primary_cidr

  subnet_secondary_name = var.subnet_secondary_name
  subnet_secondary_cidr = var.subnet_secondary_cidr
}
