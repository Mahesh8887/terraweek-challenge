### $ vim provider.tf

 # Authentication using access key
 provider "aws" {
     access_key = "AKIAZDXMNSUCC64NNYJQ"
     secret_key = "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"
     region = "ap-southeast-1"
 }

#### $ vim resource.tf

resource "aws_instance" "practice" {
     ami = "ami-0df7a207adb9748c7"
     instance_type = "t2.micro" # free tier
     security_groups = ["default"]
     key_name = "project-1"
     tags = {
         Name = "PracticeInstance"
     }
 }
