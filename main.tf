provider "aws" {
  region = "us-east-2"
  access_key = "AKIAVPT3Y5MPUPVJHRCN"
  secret_key = "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"
}

module "ec2_instance" {
  source   = "./ec2"
}
