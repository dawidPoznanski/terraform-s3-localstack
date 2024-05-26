resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-localstack-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_object" "example" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "example.txt"
  content = "This is an example file."
}
