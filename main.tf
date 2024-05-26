resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"
}

resource "aws_s3_object" "example" {
  bucket  = aws_s3_bucket.my_bucket.bucket
  key     = "example.txt"
  content = "This is an example file."
}