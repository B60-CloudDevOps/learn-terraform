resource "aws_instance" "main" {
  count        = length(var.components)
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.components[count.index]
  }

provisioner "file" {
  source      = "./provider.tf"
  destination = "/home/ec2-user/provider.tf"

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.private_ip
    }
  }
}

# Provisioners are not resources, they are alwasy inside the resource ( actual or null_resource )
# When you mention a provisioner inside a resource, if the provsioner fails, then it also marks the resource creation as a failure, when you reRun the TF plan, its going to create as the it's marked it as a damaged object