variable "vpc_name" {
    description = "The name of the VPC network."
}

variable "subnet_cidr" {
    description = "The CIDR block for the subnet."
}

variable "region" {
    description = "The GCP region to deploy resources in."
    default     = "asia-south1"
}
