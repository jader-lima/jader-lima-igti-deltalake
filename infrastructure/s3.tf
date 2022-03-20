resource "aws_s3_bucket" "dl" {
  bucket = "datalake-jader-igti-edc-tf"
  
  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

  
}