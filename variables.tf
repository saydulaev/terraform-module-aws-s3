variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "terraform_state"
}

variable "s3_bucket_versioning" {
  description = "S3 versioning"
  type        = string
  default     = "Enabled"
}

variable "s3_bucket_acl" {
  description = "S3 ACL"
  type        = string
  default     = "private"
}

variable "s3_bucket_encription_algorithm" {
  description = "Apply S3 encryption algorithm"
  type        = string
  default     = "AES256"
}

variable "s3_bucket_tags" {
  description = "S3 bucket tags"
  type        = map(any)
}
