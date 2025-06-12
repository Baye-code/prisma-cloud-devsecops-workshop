provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "c3e181e4-6d2a-4f63-ad49-c287e1cc8235"
    git_commit           = "27202c482d30cbe73c1a1b6e333e811f510d102a"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-12 22:41:35"
    git_last_modified_by = "61761073+Baye-code@users.noreply.github.com"
    git_modifiers        = "61761073+Baye-code"
    git_org              = "Baye-code"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
