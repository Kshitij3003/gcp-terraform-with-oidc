variable "project_id" {
    description = "THE GCP project id where you want to create resource"
}
variable "region" {
    description = "The GCP region to deploy resources in."
    default     = "asia-south1"
}
variable "zone" {
    description = "The GCP zone where the VM will be deployed."
    default     = "asia-south1-a"
}
