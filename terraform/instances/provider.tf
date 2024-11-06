terraform {
  backend "s3" {
    region = "eu-central-1"
    bucket = "state-storage-00"
    key    = "instances"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.74"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}
