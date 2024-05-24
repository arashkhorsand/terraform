terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ca-central-1"
}

resource "aws_instance" "terr-1" {
    ami     =  var.ami_id #variable in variables.tf
    key_name = "docker-server"
    instance_type= "t2.micro" #for t2.micro aws
    tags = {
    Name= "arash-terr"
    created_by = "Arash"
    }    
}