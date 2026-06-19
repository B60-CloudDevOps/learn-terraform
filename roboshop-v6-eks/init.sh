#!/bin/bash

token=$1
action=$2
rm -rf .terraform ;
git pull ;
terraform init --backend-config=env/test/state.tfvars ;
terraform plan
terraform $action -auto-approve