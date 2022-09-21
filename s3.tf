resource "aws_s3_bucket" "my_bucket" {
  bucket = "anil1"


}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "tushkeleunique1"
  key    = "vars.tf"
  source = "${path.module}/vars.tf"
  etag   = "${filemd5("${path.module}/vars.tf")}"
}
