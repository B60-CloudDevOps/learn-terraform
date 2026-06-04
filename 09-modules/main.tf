module "demo-ec2" {
    source = "./modules"
    instance_type = var.instance_type 
} 

