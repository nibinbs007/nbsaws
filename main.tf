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
  /*access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY */
  region     = var.region  # Singapore region
}

terraform {
  backend "s3" {
    bucket = "nbsterraform"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
