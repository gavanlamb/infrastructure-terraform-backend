# Infrastructure.Terraform.Backend
Infrastructure setup for Terraform backend

## About
Terraform Workspace: backend
To use add 
```
terraform {
    backend "s3" {
        bucket                  = "4df9-terraform-remote-state"
        dynamodb_table          = "terraform-remote-state-lock"
        key                     = "state"
        region                  = "ap-southeast-2"
        shared_credentials_file = "/Users/gavanlamb/.aws/Credentials"
        profile                 = "luga"
    }
}
```

## Apply Changes
1. `terraform init`
2. `terraform workspace new backend`
3. `terraform plan`
4. `terraform apply` and `yes`

