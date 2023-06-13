 terraform {
     required_providers {
     aws = {
     source = "hashicorp/aws"
     version = "4.66.1"
 }
 }
 }
provider "aws" {
      region = "ap-southeast-1"
 }
 resource "aws_s3_bucket" "my_s3_bucket_2" {
     bucket = "terraweek-demo-state-bucket-369"
 }

 resource "aws_dynamodb_table" "my_dynamo_table" {
     name = "terraweek-demo-state-table"
     billing_mode = "PAY_PER_REQUEST"
     hash_key = "LockID"
     attribute {
     name = "LockID"
     type = "S"
     }
 }
