variable "project_id" {
  description = "The GCP project id where you want to create resources."
}

variable "region" {
  description = "The GCP region to deploy resources in."
  default     = "asia-south1"
}

variable "zone" {
  description = "The GCP zone where the VM will be deployed."
  default     = "asia-south1-a"
}

# ✅ Map used in both VPC and VM modules as env_labels
variable "labels" {
  type = map(string)
  default = {
    environment = "dev"
    team        = "platform"
  }
  description = "Labels to apply to resources"
}
