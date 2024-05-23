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
    ami     = "ami-0c4596ce1e7ae3e68" #last ubuntu ami_id in aws
    instance_type= "t2.micro" #for t2.micro aws
    
    tags = {
    created_by = "Arash"
    }    
}