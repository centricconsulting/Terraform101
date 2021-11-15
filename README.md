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

# Deployment Instructions
1. Once the prerequisites are completed, open the code editor and PowerShell
    1. Clone the repository locally using PowerShell and GIT "```git clone https://github.com/centricconsulting/Terraform101.git```"
2. Within the code editor, open the cloned folder
3. Open the following files: 
    1. **Main.tf**
    2. **Variables.tf**
    3. **Terraform.tfvars**
4. Review Terraform and AzureRM provider configurations and backend configurations:
    1. Determine if a remote storage location will be used for the deployment or if local storage is sufficient
5. Using the Azure CLI, authenticate to the Azure Subscription:
    1. ```az login```
    2. ```az account set --subscription "<enter subscription name>"```
    3. ```az account show: Shows the current set account``` 
6. Adjust the “terraform.tfvars” and main.tf file with the correct information
7. Run the terraform commands in sequence:
    1. ```terraform init``` 
    2. ```terraform plan --var-file="terraform.tfvars"```
    3. ```terraform apply --var-file="terraform.tfvars" -auto-approve```
The resource Group defined should now be created in the Azure
