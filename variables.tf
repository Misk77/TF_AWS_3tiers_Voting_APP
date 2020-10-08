variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "aws_region" { default = "eu-north-1" }
variable "terraform-state_bucket" { default = "terraform-state_bucket" }
variable "ami" { default = "ami-0653812935d0743fe" }
variable "own_ami" { default = "" }
variable "instance_type" { default = "t3.micro" }
variable "instanceName" { default = "Node" }
variable "number_instances" { default = 1 }
