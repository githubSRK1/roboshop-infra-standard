terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
backend "s3" {
    bucket         = "robosho-remote-state01"
    key            = "vpc"
    region         = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


