terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.58"
    }
   }
   backend "s3"  {
     bucket = "bucket159357"
     key = "bucket159357/us-west-1/key"
     region = "us-west-1"
   }
  }
  
provider "aws" {
  # Configuration options
  region = "us-west-1"
}