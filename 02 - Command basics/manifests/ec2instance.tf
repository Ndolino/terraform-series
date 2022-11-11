# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "promuadmin" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-west-1"
}

# Resource Block

resource "aws_instance" "ec2demo" {
  ami           = "ami-06640050dc3f556bb" # Amazon Linux in us-west-1, update as per your region
  instance_type = "t2.micro"

  tags = {
    Name = "Tes-En-CT"
  }
}
