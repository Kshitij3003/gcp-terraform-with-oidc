# VPC name
variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
}

# Subnet CIDR block
variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

# Region as string
variable "region" {
  description = "The GCP region to deploy resources in."
  type        = string
  default     = "asia-south1"
}

# ✅ Add map type for tagging or metadata
variable "vpc_labels" {
  description = "Key-value tags to apply to VPC resources."
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "kshitij"
  }
}

# ✅ Use boolean flag for subnet flow logs
variable "enable_flow_logs" {
  description = "Enable VPC subnet flow logs."
  type        = bool
  default     = false
}
