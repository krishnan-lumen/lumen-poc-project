variable "vpc_name" {
  description = "Name of the VPC network."
  type        = string
}

variable "subnet_primary_name" {
  description = "Name of the primary subnet."
  type        = string
}

variable "subnet_primary_cidr" {
  description = "CIDR range for the primary subnet."
  type        = string
}

variable "subnet_secondary_name" {
  description = "Name of the secondary subnet."
  type        = string
}

variable "subnet_secondary_cidr" {
  description = "CIDR range for the secondary subnet."
  type        = string
}

