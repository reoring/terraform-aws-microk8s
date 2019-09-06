terraform {
  required_version = "= 0.12.7"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["ubuntu-microk8s-*"]
  }
}

resource "aws_instance" "k8s" {
  ami           = data.aws_ami.ubuntu.image_id
  instance_type = "m5.2xlarge"

  associate_public_ip_address = true
  key_name                    = aws_key_pair.master-key.key_name

  vpc_security_group_ids = [aws_security_group.admin.id]
}