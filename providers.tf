terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket         = "terraform-state-mani01"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

