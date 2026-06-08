data "vault_generic_secret" "ssh_info" {
  path = "kv/sshcred"
}

# We cannot print the sensitive info on the screen directly and vault restricts that, which is a good aciton.
output "ssh_info" {
  value = data.vault_generic_secret.ssh_info.data
  sensitive = true
}

# creating a file and saving the output info to that file.
resource "local_file" "ssh_info_file" {
  content  = data.vault_generic_secret.ssh_info.data
  filename = "/tmp/ssh_info.txt"
}
