provider "aws" {
  region = var.aws_region
  version = "~>3.7"
}


# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-jader-igti"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-west-2"
  }
}