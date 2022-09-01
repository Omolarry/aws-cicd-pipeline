resource "aws_s3_bucket" "codepipeline-artifact" {
  bucket = "pipeline-artifact-bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.pipeline-artifact.id
  acl    = "private"
}