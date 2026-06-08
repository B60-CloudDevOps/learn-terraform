data "vault_generic_secret" "ssh_info" {
  path = "kv/sshcred"
}

output "ssh_info" {
  value = data.vault_generic_secret.ssh_info.data
}