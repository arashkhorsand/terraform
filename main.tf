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
  access_key = "AKIA5FTY6MDSAHLBQBJN"
  secret_key = "avFdFcHGfRKyNYH6KqDJ4/Koerv8WVMbuOSwpyd5s"
}

