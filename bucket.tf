# Create S3 Bucket
resource "aws_s3_bucket" "terraform-demo-1808" {
  bucket = "terraform-demo-1808"
}

# Upload file to S3
resource "aws_s3_object" "terraform_index" {
  bucket = aws_s3_bucket.terraform-demo-1808.id
  key = "index.html"
  source = "index.html"
  content_type = "text/html"
  etag = filemd5("index.html")
}

# S3 Web hosting
resource "aws_s3_bucket_website_configuration" "terraform_hosting" {
  bucket = aws_s3_bucket.terraform-demo-1808.id

  index_document {
    suffix = "index.html"
  }
}
