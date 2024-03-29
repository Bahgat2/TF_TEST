terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "~>4.16"
    }
  }
}
provider "aws" {
    region = "us-east-2"
    access_key = var.access_key
    secret_key = var.secret_key
  
}
resource "aws_instance" "pc_vcm" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    dep = "PKI"
  }
}
resource "aws_iam_user" "tota" {
  name = "tota"
  tags = {
    haya = "shatora"
  }
}
