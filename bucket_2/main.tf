terraform {
  required_version = ">= 0.12"
}

module "bucket_2" {
  source = "../modules/s3"

  name = "batata-asterix"
}