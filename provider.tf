

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "f7ffc7d4-fa14-411e-ae2d-56c5b8555b51"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
