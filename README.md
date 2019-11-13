# Infrastructure.Terraform.Backend
Infrastructure setup for Terraform backend

## About
Terraform Workspace: backend
To use add 
```
terraform {
    backend "s3" {
        bucket = "luga-terraform-remote-state"
        key    = "key"
        region = "ap-southeast-2"
    }
}
```

## Apply Changes
1. `terraform plan`
2. `terraform apply` and `yes`

