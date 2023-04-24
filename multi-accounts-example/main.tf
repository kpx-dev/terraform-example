terraform {
  backend "s3" {
    bucket = "tf-multi-accounts-example.example.com"
    # key     = "multi-accounts-example.tfstate"
    # key     = "dev-multi-accounts-example.tfstate"
    # key     = "prod-multi-accounts-example.tfstate"
    profile = "demo-prod"
    region  = "us-west-2"
  }
}

provider "aws" {
  profile = "demo-prod"
  region  = "us-west-2"
  assume_role {
    role_arn = var.assume_role
  }
}
