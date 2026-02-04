variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "key_name" {
  type        = string
  description = "private key to ssh in to ec2"
  default     = "kkey-vot"
}

variable "ubuntu_ami_id" {
  type        = string
  default     = "ami-087d1c9a513324697"
}
