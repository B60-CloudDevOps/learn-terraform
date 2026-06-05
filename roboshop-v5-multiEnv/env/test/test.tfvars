# Value of the map of maps for components variable, we can use this in any environment and change the instance type as per the requirement of the environment. This is how we can achieve the DRY code in terraform.
components = {
    mongodb = {
        instance_type = "t3.medium"
    }
    catalogue = {
        instance_type = "t3.micro"
    }
    redis = {
        instance_type = "t3.micro"
    }
    user = {
        instance_type = "t3.micro"
    }
    cart = {
        instance_type = "t3.micro"
    }
    mysql = {
        instance_type = "t3.medium"
    }
    shipping = {
        instance_type = "t3.medium"
    }
    rabbitmq = {
        instance_type = "t3.micro"
    }
    payment = {
        instance_type = "t3.micro"
    }
    frontend = {
        instance_type = "t3.micro"
    }
    
}

env_name = "test"
ami_name = "DevOps-LabImage-RHEL9"
sg_name = "b60-allow-all"