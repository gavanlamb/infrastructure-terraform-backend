# Terraform Backend
Infrastructure for Terraform backend.

## About
```hcl
provider "aws" {
  region  = "ap-southeast-2"
  version = "3.32.0"
}

module "backend" {
  source         = "github.com/gavanlamb/terraform-module-aws-backend"
  environment    = var.environment
  name           = var.name
  iam_path       = var.iam_path
  username       = var.username
  user_pgp_key   = var.user_pgp_key
  bucket_name    = var.bucket_name
  dynamodb_name  = var.dynamodb_name
}
```

## Adding another environment
1. Copy [production.ap-southeast-2.tfvars](./variables/production.ap-southeast-2.tfvars) and rename it using the following template `${environment}.${location}.tfvars`
2. Update relevant environment variables

## Apply Changes
Run changes manually
1. Set CLI environment variables  
   `export AWS_ACCESS_KEY_ID="XXXXXXXADASFSDXXXXXX"`  
   `export AWS_SECRET_ACCESS_KEY="asdFDSfFsdffsfwejfc"`  
   `export AWS_DEFAULT_REGION="ap-southeast-2"`

2. `terraform init`

3. `terraform plan -var-file=./variables/${environment}.${location}.tfvars -out=${environment}.${location}.tfplan`

4. `terraform apply -auto-approve ${environment}.${location}.tfplan`
