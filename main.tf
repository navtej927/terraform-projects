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

resource "aws_instance" "public-ec2" {
  ami           = "ami-0182f373e66f89c85"  # Replace with your desired AMI ID
  instance_type = "t2.micro"               # Specify the instance type
  key_name      = "navt92-keypair" # Replace with your existing key pair name
  subnet_id = "subnet-0e4b8099ab31479e5"
  vpc_security_group_ids = ["sg-06bde5ddcc504e95a"]
  tags = {
    Name = "ec2-public-delete"
  }
}

resource "aws_instance" "private-ec2" {
  ami           = "ami-0182f373e66f89c85"  # Replace with your desired AMI ID
  instance_type = "t2.micro"               # Specify the instance type
  key_name      = "navt92-keypair" # Replace with your existing key pair name
  subnet_id = "subnet-0d1cc329b23e45c82"
  vpc_security_group_ids = ["sg-06bde5ddcc504e95a"]
  tags = {
    Name = "ec2-private-delete"
  }
}