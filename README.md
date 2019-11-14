# Infrastructure.Terraform.Backend
Infrastructure setup for Terraform backend

## About
Terraform Workspace: backend
To use add 
```
terraform {
    backend "s3" {
        bucket                  = "luga-terraform-remote-state"
        dynamodb_table          = "terraform-remote-state-lock"
        key                     = "state"
        region                  = "ap-southeast-2"
        shared_credentials_file = "/Users/gavanlamb/.aws/Credentials"
        profile                 = "luga"
    }
}
```

## Apply Changes
1. `terraform plan`
2. `terraform apply` and `yes`

