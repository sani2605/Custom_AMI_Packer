variable "ami_name" {
  type    = string
  default = "packer-ubuntu-aws-test"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_filters" {
  type = map(string)
  default = {
    name                = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-20240927"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
}

variable "ami_owners" {
  type    = list(string)
  default = ["099720109477"]
}

variable "ssh_username" {
  type    = string
  default = "ubuntu"
}
