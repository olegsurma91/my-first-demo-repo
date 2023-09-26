terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
    # Configuration options
 region = "us-east-1" 
}


resource "aws_instance" "my_first_instance" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_demo_1"
  }
}

