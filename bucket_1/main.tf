terraform {
  required_version = ">= 0.12"
}

module "bucket_1" {
  source = "../modules/s3"

  name = "batata-salsa"
}
