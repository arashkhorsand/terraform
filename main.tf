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
    key_name = var.key_name #variable key_name in variables.tf
    instance_type= var.instance_type #variable instance_type in variables.tf
    tags = {
    Name= var.machine_name
    created_by = "Arash"
    }   
}