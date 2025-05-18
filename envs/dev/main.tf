terraform {
  backend "gcs" {
    bucket = "terraform-state-kt-1805"
    prefix = "envs/dev/terraform.tfstate"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "ssh_key" {
  source   = "../../modules/ssh_key"
  key_name = "terraform-dev"
}

module "vpc" {
  source      = "../../modules/vpc"
  vpc_name    = "dev-vpc"
  subnet_cidr = "10.10.0.0/16"
  region      = var.region
}

module "vm" {
  source          = "../../modules/vm"
  vm_name         = "dev-vm"
  machine_type    = "e2-micro"
  zone            = var.zone
  network         = module.vpc.network
  subnet          = module.vpc.subnet
  ssh_user        = "terraform-dev"
  ssh_public_key  = module.ssh_key.public_key
}
