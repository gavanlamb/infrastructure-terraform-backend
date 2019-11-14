provider "aws" {
  region = "ap-southeast-2"
  shared_credentials_file = "/Users/gavanlamb/.aws/Credentials"
  profile = "luga"
}

module "backend" {
  source = "github.com/Haplo-tech/Terraform.Module.AWS.Backend"
  company = "luga"
  environment = "infrastructure"
  name = "terraform-backend"
  service = "terraform"
  group_name = "terraform-remote-state"
  iam_path = "terraform"
  bucket_name = "4df9-terraform-remote-state"
  dynamodb_name = "terraform-remote-state-lock"
}