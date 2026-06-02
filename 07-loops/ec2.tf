resource "aws_instance" "main" {
  count        = 3  
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t3.medium"

  tags = {
    Name = "B60-Demo-EC2"
  }
}