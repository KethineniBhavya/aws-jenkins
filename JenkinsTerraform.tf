terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
  required_version = ">= 1.2"
}

provider "aws" {
  region = "eu-west-2"
}
resource "aws_s3_bucket" "Bucket1" {
  bucket = "s3-demo-20251203"  # Must be globally unique and lowercase

  tags = {
    Name        = "Bucket123"
    Environment = "Dev"
  }

}
