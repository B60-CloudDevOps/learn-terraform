module "ec2" {
   for_each      = var.components

    source        = "./modules"
    env_name      = var.env_name   # This is how we supply the value to the module, we can use any variable or hardcoded value here
    ami_name      = var.ami_name
    sg_name       = var.sg_name
    name          = each.key
    instance_type = each.value["instance_type"]
}

# This is how we fetch the information from the module and use it in the output
output "env_name" {
    value = module.ec2.env_name
}