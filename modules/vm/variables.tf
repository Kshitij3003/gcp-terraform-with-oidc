# Simple string for naming resources
variable "vm_name" {
  description = "The name of the virtual machine instance."
  type        = string
}

# String type with default value for simplicity
variable "machine_type" {
  description = "The type of machine to use for the VM."
  type        = string
  default     = "e2-micro"
}

# String with default for zonal resources
variable "zone" {
  description = "The GCP zone where the VM will be deployed."
  type        = string
  default     = "asia-south1-a"
}

# OS image reference in string form
variable "image" {
  description = "The image to use for the VM instance."
  type        = string
  default     = "debian-cloud/debian-11"
}

# VPC name as string
variable "network" {
  description = "The name of the VPC network to attach the VM to."
  type        = string
}

# Subnet name as string
variable "subnet" {
  description = "The name of the subnet to attach the VM to."
  type        = string
}

# SSH user is a simple string
variable "ssh_user" {
  description = "The SSH username for accessing the VM."
  type        = string
}

# Public key content as a string
variable "ssh_public_key" {
  description = "The SSH public key to be added to the VM for authentication."
  type        = string
}

# ✅ Example of boolean: enable external IP or not
variable "enable_external_ip" {
  description = "Whether to enable external IP for the instance."
  type        = bool
  default     = true
}

# ✅ List of additional tags to assign
variable "tags" {
  description = "List of network tags to assign to the instance."
  type        = list(string)
  default     = []
}

# ✅ Map type: can be used for environment-based configurations
variable "env_labels" {
  description = "Key-value map of labels to apply to the VM."
  type        = map(string)
  default     = {}
}

# ✅ Object type for structured network settings
variable "custom_network" {
  description = "Custom network configuration (name and subnet)."
  type = object({
    network_name = string
    subnet_name  = string
  })
  default = {
    network_name = "default"
    subnet_name  = "default-subnet"
  }
}

# ✅ Tuple type to show ordered fixed values (e.g., static IP and port)
variable "static_config" {
  description = "A tuple of [static_ip, port_number]."
  type        = tuple([string, number])
  default     = ["0.0.0.0", 22]
}
