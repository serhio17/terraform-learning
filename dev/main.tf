provider "aws" {
  region = "eu-central-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}

output "vpc_id" {
  # value = "${aws_vpc.main.id}"
  value = module.my_vpc
}