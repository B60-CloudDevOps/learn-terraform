module "ec2" {
    source        = "./modules"
    env_name      = var.env_name
}

# This is how we fetch the information from the module and use it in the output
output "env_name" {
    value = module.ec2.env_name
}