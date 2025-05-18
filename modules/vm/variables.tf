variable "vm_name" {
    description = "The name of the virtual machine instance."
}

variable "machine_type" {
    description = "The type of machine to use for the VM."
    default     = "e2-micro"
}

variable "zone" {
    description = "The GCP zone where the VM will be deployed."
    default     = "asia-south1-a"
}

variable "image" {
    description = "The image to use for the VM instance."
    default     = "debian-cloud/debian-11"
}

variable "network" {
    description = "The name of the VPC network to attach the VM to."
}

variable "subnet" {
    description = "The name of the subnet to attach the VM to."
}

variable "ssh_user" {
    description = "The SSH username for accessing the VM."
}

variable "ssh_public_key" {
    description = "The SSH public key to be added to the VM for authentication."
}
