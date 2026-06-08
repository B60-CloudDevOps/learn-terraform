data "vault_generic_secret" "ssh_info" {
  path = "kv/sshcred"
}