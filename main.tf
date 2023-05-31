terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#Configure provider and access
provider "aws" {
  region     = var.region  # Singapore region
}
