resource "aws_security_group" "main" {
  name   = "sg"
  vpc_id = aws_vpc.example.id

  ingress = []
  egress  = []
}