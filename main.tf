terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<=5.45.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "DB_server" {
  ami           = "ami-00beae93a2d981137" # Specify an appropriate AMI ID
  instance_type =  "t2.micro"

  tags = {
    Name = "Terraform-Practice"
  }
}