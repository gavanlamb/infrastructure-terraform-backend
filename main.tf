provider "aws" {
  region = "ap-southeast-2"
  shared_credentials_file = "/Users/gavanlamb/.aws/Credentials"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "luga-terraform-remote-state"
    key = "key"
    region = "ap-southeast-2"
  }
}

module "backend" {
  source = "github.com/Haplo-tech/Terraform.Module.AWS.Backend"
  group_name = "terraform-remote-state"
  iam_path = "terraform"
  s3 = {
    name = "4df9-terraform-remote-state"
    tags = {
      name = "S3 remote Terraform state store"
      service = "Terraform"
    }
  }

  dynamodb = {
    name = "terraform-remote-state-lock"
    tags = {
      name = "Dynamodb remote Terraform state lock store"
      service = "Terraform"
    }
  }
}