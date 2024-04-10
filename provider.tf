terraform {
  required_version = ">= 1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }

  backend "s3" {
    profile        = "devforgex"
    bucket         = "devforgex-tfstate"
    key            = "IaC/odoo/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform"
  }
}

provider "aws" {
  profile = "devforgex"
  region = "eu-west-1"

  default_tags {
    tags = {
      Environment  = var.global_var_environment_tag
      Organisation = var.global_var_org_tag
      Product      = var.global_var_product_tag
      ManagedBy    = "Terraform"

    }
  }
}
