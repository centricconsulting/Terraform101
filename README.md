# Terraform-101
101 Fundamental Terraform Repository for Terraform demonstration and learning.

This Terraform 101 Fundamentals Repository contains the necessary basics to understand for Terraform deployments into an Azure Cloud Subscription. 

The following files are created within this demonstration: 
1. main.tf
    1. The Main.tf file contains the main set of configurations for your infrastructure management
    2. The term “main” simply identifies the primary file for configuration management and the actual .tf file can be named whatever else might suit the situation
2. variables.tf
    1. The Variables.tf file is used to contain the variable definitions for your infrastructure management
    2. Variables contained within the Variables.tf file are used to abstract values directly from a Main.tf file to remove redundancy and duplicated values
3. terraform.tfvars
    1. The Terraform.tfvars file is used to define values established in the Variables.tf file
    2. Configuration files (Main.tf and Variables.tf) can be provided different information with each terraform.tfvars file identified
    3. Terraform.tfvars files allow organizations to use the same configuration files, but change values
