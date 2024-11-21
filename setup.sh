#!/bin/bash

# Move to infra path
cd infra/terraform

# Terraform commands
terraform init
terraform plan
terraform apply -auto-approve