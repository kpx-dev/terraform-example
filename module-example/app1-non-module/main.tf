terraform {
  backend "s3" {
    bucket  = "tf-module-example-0423.example.com"
    key     = "app1-non-module.tfstate"
    profile = "demo-dev"
    region  = "us-west-2"
  }
}

provider "aws" {
  profile = "demo-dev"
  region  = "us-west-2"
}
