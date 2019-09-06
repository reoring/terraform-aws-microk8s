variable "aws_region" {
  type        = string
  description = "AWSのリージョン"
  default     = "ap-northeast-1"
}

variable "aws_profile" {
  type        = string
  description = "AWSのプロファイル名"
  default     = "sandbox"
}

variable "app_name" {
  type        = string
  description = "製品名"
  default     = "app"
}

variable "app_instance" {
  type        = string
  description = "インスタンスの名前"
  default     = "instance"
}

variable "app_stage" {
  type        = string
  description = "ステージ名称(例えば、dev, prod, qa, etc)"
  default     = "dev"
}

variable "global_tags" {
  type = map

  default = {
    Provisioner = "Terraform"
    Owner       = "あなたのお名前"
  }
}

variable "path_to_public_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "admin_ip" {
  type = string
}