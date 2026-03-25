provider "aws" {
  region = "us-east-1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "vault-demo-bucket-${random_id.bucket_suffix.hex}"
}

output "bucket_name"{
    value = aws_s3_bucket.vault_test_bucket.id
}

