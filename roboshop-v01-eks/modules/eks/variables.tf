variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type = string
  default = "1.35"
}

variable "subnet_ids" {
  type = list(string)
}