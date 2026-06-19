This provisions an EKS Cluster with one nodepool.

    # terraform int --backend-config=env/test/state.tfvars
    # terraform plan
    # terraform apply -auto-approve

What are the areas of improvements with this cluster ?
    1) Inputs are hardcoded.
    2) This don't support multiNool, even if it supports, we need to reWrite the nodePool code multiple tiles.

Let's address these 2 via v02-eks/