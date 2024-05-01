output "bucket_domain_name" {
  value       = aws_s3_bucket.self.bucket_domain_name
  description = "S3 bucket domain name"
}

output "bucket_arn" {
  value       = aws_s3_bucket.self.arn
  description = "S3 bucket arn"
}

output "bucket_id" {
  value       = aws_s3_bucket.self.id
  description = "S3 bucket id"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.self.bucket_regional_domain_name
  description = "S3 bucket regional domain name"
}

output "bucket_hosted_zone_id" {
  value       = aws_s3_bucket.self.hosted_zone_id
  description = "S3 bucket hosted zone id"
}

output "bucket_region" {
  value       = aws_s3_bucket.self.region
  description = "S3 bucket region"
}
