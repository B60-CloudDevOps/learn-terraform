resource "null_resource" "metrics_server" {
  provisioner "local-exec" {
    command = <<EOT
      aws eks update-kubeconfig --region us-east-1 --name {{ cluster_name }}-{{ env }}
      kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
EOT
  }
}

# We can also do the same using helm provider;