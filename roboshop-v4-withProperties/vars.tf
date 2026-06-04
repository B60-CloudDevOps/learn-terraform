# Map Input : Map Of Maps
variable "components" {
    default = {
        catalogue = {
            instance_type = "t3.medium"
            ami_id = "ami-0fcc78c828f981df2"
        }
        shipping = {
            instance_type = "t3.large"
            ami_id = "ami-0fcc78c828f981df2"
        }
        frontend = {
            instance_type = "t3.micro"
            ami_id = "ami-0fcc78c828f981df2"
        }
        cart = {
            instance_type = "t3.medium"
            ami_id = "ami-0fcc78c828f981df2"
        }
        payment = {
            # instance_type = "t3.medium"
            ami_id = "ami-0fcc78c828f981df2"
        }
    }
}

variable "security_group_id" {
    default = "sg-0b7b1b3a8e31d38ee"
}