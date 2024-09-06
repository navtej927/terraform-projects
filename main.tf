# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "mproddevdelete"
  acl    = "private"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}