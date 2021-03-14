provider "aws" {
  region = "ap-southeast-2"
  version = "3.32.0"
}

module "backend" {
  source = "github.com/gavanlamb/terraform-module-aws-backend"
  environment    = var.environment
  name           = var.name
  iam_path	     = var.iam_path
  username       = var.username
  user_pgp_key   = var.user_pgp_key
  bucket_name    = var.bucket_name
  dynamodb_name  = var.dynamodb_name
}
