# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

# resource "aws_s3_bucket" "example" {
#   bucket = "mproddevdelete"
#   acl    = "private"

#   tags = {
#     Name        = "My Example Bucket"
#     Environment = "Dev"
#   }
# }

resource "aws_instance" "example" {
  ami           = "ami-0182f373e66f89c85"  # Replace with your desired AMI ID
  instance_type = "t2.micro"               # Specify the instance type
  key_name      = "navt92-keypair" # Replace with your existing key pair name

  tags = {
    Name = "ec2-delete"
  }
}