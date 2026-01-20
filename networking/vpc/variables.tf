variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}

variable "region" {
  description = "Region for the VPC and subnets (e.g. us-east4)."
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC network."
  type        = string
}

variable "routing_mode" {
  description = "Routing mode for the VPC (REGIONAL or GLOBAL)."
  type        = string
  default     = "REGIONAL"
}

variable "subnet_primary_name" {
  description = "Name of the primary subnet."
  type        = string
}

variable "subnet_primary_cidr" {
  description = "CIDR range for the primary subnet."
  type        = string
}

variable "subnet_primary_private_ip_google_access" {
  description = "Enable private Google access on primary subnet."
  type        = bool
  default     = true
}

variable "subnet_secondary_name" {
  description = "Name of the secondary subnet."
  type        = string
}

variable "subnet_secondary_cidr" {
  description = "CIDR range for the secondary subnet."
  type        = string
}

variable "subnet_secondary_private_ip_google_access" {
  description = "Enable private Google access on secondary subnet."
  type        = bool
  default     = true
}

