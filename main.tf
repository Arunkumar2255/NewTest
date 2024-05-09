terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2.0"
    }
 }
}
provider  "aws" {
    region         = "us-east-1"
}
resource "aws_instance" "Linux" {
    ami            =  "ami-07caf09b362be10b8"
    instance_type  =  "t2.micro"
}
