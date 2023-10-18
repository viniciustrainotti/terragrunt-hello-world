terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

module "bucket_1" {
  source = "./modules/s3"

  name = "batata-salsa"
}

module "bucket_2" {
  source = "./modules/s3"

  name = "batata-asterix"

  depends_on = [module.bucket_1]
}