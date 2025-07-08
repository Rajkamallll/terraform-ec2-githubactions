provider "aws" {
    region = "eu-north-1"
    access_key = var.access_key
    secret_key = var.secret_key
  
}

resource "aws_instance" "ec2" {
    ami = "ami-042b4708b1d05f512"
    instance_type = "t3.micro"

    tags = {
        Name = "GitHubActions-EC2"
    }
  
}