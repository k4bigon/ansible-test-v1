terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {}

terraform {
  backend "s3" {
    bucket = "kabigonansibletestbucket"
    region = "us-east-1"
  }
}
