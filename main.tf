
resource "aws_s3_bucket" "self" {
  bucket = var.s3_bucket_name
  tags   = (merge(var.s3_bucket_tags, tomap({ "Name" = "${var.s3_bucket_name}" })))

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_acl" "self" {
  bucket = aws_s3_bucket.self.id
  acl    = var.s3_bucket_acl

  depends_on = [
    aws_s3_bucket.self
  ]
}

resource "aws_s3_bucket_versioning" "self" {
  bucket = aws_s3_bucket.self.id
  versioning_configuration {
    status = var.s3_bucket_versioning
  }

  depends_on = [
    aws_s3_bucket.self
  ]
}

resource "aws_s3_bucket_server_side_encryption_configuration" "self" {
  bucket = aws_s3_bucket.self.id
  rule {
    apply_server_side_encryption_by_default {
      // kms_master_key_id = var.s3_bucket_kms_master_key_id
      sse_algorithm = var.s3_bucket_encription_algorithm
    }
  }

  depends_on = [
    aws_s3_bucket.self
  ]
}
