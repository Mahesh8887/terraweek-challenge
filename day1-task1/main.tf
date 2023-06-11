# Specify the AWs provider

provider "aws" {
   region = "ap-southeast-1"
}

# Creat an EC2 instance

resource "aws_instance" "example" {
   count = 2
   ami = "ami-0df7a207adb9748c7"
   instance_type = "t2.micro"
   key_name = "project-1"

   tags = {
      Name = "terraweek-demo-instance"
  }
}
