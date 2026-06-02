resource "aws_instance" "main" {
  count        = length(var.components)
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.components[count.index]
  }
}

# Lists are highly dependent on the order of the input, though they are same, aslight change in the order will make them different. So, we should be careful while using lists. In above code, we are creating 4 EC2 instances with names frontend, catalogue, shipping and payment. If we change the order of the list, then the names of the EC2 instances will also change.  