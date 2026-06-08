provider "vault" {
  address        = "http://vault-general.robotshop.fun:8200"
  token = var.auth_token
}

terraform {
  backend "s3" {
    bucket = "b60-s3-for-tfstate"
    key    = "vault-demo/terraform.tfstate"
    region = "us-east-1"
  }
}