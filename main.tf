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

terraform {
  backend "s3" {
    bucket = "nbsterraform"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
