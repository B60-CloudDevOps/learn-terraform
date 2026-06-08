resource "null_resource" "main" {
  provisioner "local-exec" {
    command = "echo Example to run on Text machine && touch /tmp/example.txt"
  }
}