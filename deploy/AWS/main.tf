terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00c90dbdc12232b58"
  instance_type = "t2.micro"
  key_name = "MacECKey"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}