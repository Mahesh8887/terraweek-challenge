terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "terraweek" {
  count = 3
  ami           = "ami-0df7a207adb9748c7"
  instance_type = "t2.micro"
  key_name = "project-1"

  tags = {
    Name = "terraweek-day3-services"
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
  provisioner "local-exec" {
    command = "echo 'Configuring the EC2 instance'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Destroy the instance'"
  }
}

output "ec2_public_ips" {
     value = aws_instance.terraweek[*].public_ip
