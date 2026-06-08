resource "null_resource" "main" {
  provisioner "local-exec" {
    command = "echo Example to run on local machine && touch example.txt"

  }
}