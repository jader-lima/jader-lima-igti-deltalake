variable "base_bucket_name" {
    default = "datalake-igti-jader"  
}

variable "ambiente" {
  default = "PRODUCAO"
}

variable "numero_conta" {
  default = "043843570961"
}

variable "aws_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "IGTIexecutaEMR"
}
