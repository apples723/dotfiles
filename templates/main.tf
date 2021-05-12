#This file replaced the main.tf file from the tf module you copied
#Please update the key path
#This file is setup to support workspaces (prod/dev), if you are not using that make sure to remove the workspace_key_prefix and specificy the full path 
#i.e : if not using workspaces use the following for the key: it-inf-acct/resources/<prod>/<region>/<instance_name>.tfstate

provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.role_arn
  }
}

terraform {
  backend "s3" {
    bucket               = "2u-terraform"
    region               = "us-east-1"
    workspace_key_prefix = "it-inf-acct/resources"
    key                  = "<region>/<instance_name>.tfstate" 
    dynamodb_table       = "terraform-locks"
  }
}
