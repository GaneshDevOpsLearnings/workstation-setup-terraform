resource "aws_instance" "web" {
    count = 2
  ami           = vars.ami
  instance_type = vars.instance_type

  tags = {
    Name = "${count.index+1}"
  }
}