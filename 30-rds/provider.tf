terraform {
   required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = ">= 6.37.0"
  }
}

  backend "s3" {
    bucket = "expense-dev-396608782364-us-east-1-an"
    key    = "expense-rds-dev"
    region = "us-east-1"
    dynamodb_table = "expense-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
