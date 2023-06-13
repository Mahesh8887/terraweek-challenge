terraform {
     required_providers {
     aws = {
     source = "hashicorp/aws"
     version = "4.16"
}
}
required_version = ">= 1.2.0"
}
provider "aws" {
region = "ap-southeast-1"
}
resource "aws_instance" "my_ec2_instance" {
    count = 2
    ami = "ami-0df7a207adb9748c7"
    instance_type = "t2.micro"
    tags = {
        Name = "TerraformLearnings-Instance"
}
}
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "terraform-learnings-369"
    tags = {
        Name = "terraform-bucket-369"
        Environment = "Dev"
    }
}
output "ec2_public_ips" {
    value = aws_instance.my_ec2_instance[*].public_ip
}
