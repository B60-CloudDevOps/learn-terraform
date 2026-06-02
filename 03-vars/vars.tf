variable "cityName" {
    type        = string
    description = "The name of the city"
}

output "cityName" {
    value = var.cityName
}