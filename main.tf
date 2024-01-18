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
  
}
resource "aws_instance" "pc_vcm" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    dep = "PKI"
  }
}