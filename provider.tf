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
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region  # Singapore region
}

terraform {
  backend "s3" {
    bucket = "nbsterraform"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
