terraform {
  backend "gcs" {
    bucket  = "terraform-state-kt-1805"
    prefix  = "envs\dev\terraform.tfstate"
    prefix = "envs\stg\terraform.tfstate"
  }
}
