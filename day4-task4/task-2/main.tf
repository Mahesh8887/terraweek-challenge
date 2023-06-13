terraform {

required_providers {
    aws = {
    source = "hashicorp/aws"
    version = "4.66.1"
    }
 }

backend "s3" {
    bucket = "terraweek-demo-state-bucket-369"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "terraweek-demo-state-table"
}
}
provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "my_ec2_instance" {
    count = 3
    ami = "ami-0df7a207adb9748c7"
    instance_type = "t2.micro"
    tags = {
    Name = "terraweek-instance"
}
}
