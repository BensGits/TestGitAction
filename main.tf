# Just a terraform file to practice Git Action
provider "aws" {
  region                   = "us-west-2"
#  shared_credentials_files = ["/Users/19734/.aws/credentials"]
}

# terraform {
#     backend "s3" {
#         bucket = "jhooq-terraform-s3-bucket"
#         key    = "jhooq/terraform/remote/s3/terraform.tfstate"
#         region     = "us-west-2"
#         #access_key = ""
#         #secret_key = ""
#     }
# }


# resource "aws_instance" "ec2_example" {

#     ami = "ami-0767046d1677be5a0" 

#     instance_type = "t2.micro"

#     tags = {
#       Name = "EC2 Instance with remote state"
#     }
# }

resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "Action-test"
  }
}