resource "aws_instance" "main" {

  ami           = "ami-0fcc78c828f981df2"
  instance_type = var.instance_type
  # Exception Handling : If instance_type is not mentioned for any component, then it will take t3.micro as default value.

  tags = {
    Name = sample
  }
}