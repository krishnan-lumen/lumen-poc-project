output "vpc_name" {
  description = "The name of the created VPC."
  value       = google_compute_network.vpc.name
}

output "vpc_self_link" {
  description = "Self link of the created VPC."
  value       = google_compute_network.vpc.self_link
}

output "subnet_primary_name" {
  description = "Name of the primary subnet."
  value       = google_compute_subnetwork.subnet_primary.name
}

output "subnet_secondary_name" {
  description = "Name of the secondary subnet."
  value       = google_compute_subnetwork.subnet_secondary.name
}

