terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = var.awsRegion
  access_key = var.access_key
  secret_key = var.secret_key
  #   profile = "gangabadiger"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket  = var.bucketName

  tags = {
    Name = var.bucketName
  }
}
