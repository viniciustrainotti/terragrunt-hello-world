terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

module "bucket" {
  source = "./modules/s3"

  name = var.bucket_name
}