resource "aws_key_pair" "master-key" {
  key_name   = "master-key"
  public_key = file(var.path_to_public_key)
}