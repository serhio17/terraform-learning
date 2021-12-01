provider "aws" {
  region = "eu-central-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "my_vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = "172.16.0.0/16"
  tenancy     = "default"
}

output "vpc_id" {
  value = module.my_vpc.id
}