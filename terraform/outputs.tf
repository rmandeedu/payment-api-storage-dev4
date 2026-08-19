output "bucket_name" {
  description = "Provisioned S3 bucket name"
  value       = aws_s3_bucket.application_storage.bucket
}

output "bucket_arn" {
  description = "Provisioned S3 bucket ARN"
  value       = aws_s3_bucket.application_storage.arn
}

output "aws_region" {
  description = "AWS region"
  value       = "us-east-1"
}

output "application" {
  value = "payment-api"
}

output "environment" {
  value = "dev"
}

output "owner" {
  value = "payment-spoke"
}
