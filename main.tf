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
  instance_type =  var.instance_type

  tags = {
    Name = "Terraform-Practice"
  }
}

resource "aws_iam_user" "demouser" {
    name = "tuckerdemo"
}

#string variable type:

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}