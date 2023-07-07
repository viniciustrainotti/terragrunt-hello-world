terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = var.name

  tags = {
    Name        = var.name
    Environment = "Dev"
  }
}