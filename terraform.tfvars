aws_region           = "us-east-1"
instance_type        = "t2.micro"
ami_id               = "ami-07caf09b362be10b8"  # Replace with a valid AMI ID for your region
iam_instance_profile = "example-instance-profile"
key_name             = "NV"
tags = {
  Environment = "development"
  Project     = "example-project"
}
