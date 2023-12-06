resource "aws_instance" "web" {
    count = length(var.name)
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.name[count.index]
  }
}