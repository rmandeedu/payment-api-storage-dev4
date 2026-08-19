locals {
  application_name = "payment-api"
  environment      = "dev"
  owner            = "payment-spoke"

  common_tags = merge(
    {
      Application   = local.application_name
      Environment   = local.environment
      Owner         = local.owner
      ManagedBy     = "Terraform"
      ProvisionedBy = "Backstage-IDP"
      Platform      = "CloudOps"
    },
    var.additional_tags
  )
}

resource "aws_s3_bucket" "application_storage" {
  bucket_prefix = "payment-api-dev-"

  tags = local.common_tags
}

resource "aws_s3_bucket_versioning" "application_storage" {
  bucket = aws_s3_bucket.application_storage.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "application_storage" {
  bucket = aws_s3_bucket.application_storage.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "application_storage" {
  bucket = aws_s3_bucket.application_storage.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
