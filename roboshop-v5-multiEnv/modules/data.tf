# aws ami datasource
data "aws_ami" "latest" {
    most_recent = true
    
    filter {
        name   = "name"
        values = ["${var.ami_name}"] # Name of the AMI, you can find it in the AWS console or by using AWS CLI
    }
        
    owners = ["self"] # Owner ID of the AMI, you can find it in the AWS console or by using AWS CLI
}

# Datasource for security group, we will use this in the EC2 module to attach the security group to the instance
data "aws_security_group" "selected" {
  name = var.sg_name
}