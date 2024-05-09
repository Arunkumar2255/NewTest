provider  "aws" {
    region         = "us-east-1"
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key
}
resource "aws_instance" "Linux" {
    ami            =  "ami-07caf09b362be10b8"
    instance_type  =  "t2.micro"
}
