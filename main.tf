resource "aws_instance" "example" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  iam_instance_profile   = var.iam_instance_profile
  key_name               = var.key_name

root_block_device {
    volume_type = "gp2"  # General Purpose SSD (GP2)
    volume_size = 8      # Size in GB
    encrypted   = true   # Encrypt the root block device
  }

  tags = merge({
    Name = "example-instance"
  }, var.tags)

metadata_options {
    http_tokens = "required"  # Require IMDSv2
  }

  lifecycle {
    create_before_destroy = true
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              EOF
}

