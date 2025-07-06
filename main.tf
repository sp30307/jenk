provider "aws" {
  region = "us-east-1" # Change this as needed
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-09e6f87a47903347c" # Example Amazon Linux 2 AMI, change per region
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformEC2"
  }

  key_name = "sp"  # Replace with your actual key pair
}
