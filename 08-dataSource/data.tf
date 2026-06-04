data "aws_security_group" "selected" {
  name = "b60-allow-all"
}

# Output the security group ID
output "security_group_id" {
  value = data.aws_security_group.selected
}
