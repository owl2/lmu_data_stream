# Bucket for external source simulation
resource "aws_s3_bucket" "lmu-external-sources" {
  bucket = "lmu-data-stream-reception"
  acl    = "private"

  tags = {
    Name        = "lmu-data-stream"
  }

  force_destroy = true
}

