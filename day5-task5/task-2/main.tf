provider "aws" {
  region = "us-east-1"
}
module "s3_bucket" {
  source      = "git::https://example.com/your-repo.git?ref=v1.0.0"
  bucket_name = "my-example-bucket"
}
