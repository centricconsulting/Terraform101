# Configure Terraform and the Azure Provider
terraform {
    required_version = ">= 0.14.9" # Defined Terraform Version #
    required_providers {
        azurerm = { # Azure Provider 
            source = "hashicorp/azurerm"
            version = "~> 2.65" # Defined Azure Version #
        }
    }
    backend "azurerm" { # Use a "remote backend" for central storage of TFstate files (secured recommended method)
        resource_group_name  = "rg-example" 
        storage_account_name = "storageacctexample"
        container_name       = "containerexample"
        key                  = "demo.tfstate" # Name of the TFState file dedicated to this deployment
    }
    # Optionally place the backend on the local machine if opting out of storing the TFState file remotely. Switch lines 17 - 19 instead of 10-15
    # backend "local" {
    #     path = "relative/path/to/terraform.tfstate"
    # }
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
provider "azurerm" { 
     features {}
}

# Resource Group Block
resource "azurerm_resource_group" "example-rg" { # "example-rg" is the defining name used by terraform to reference this resource
    name     = "${var.resource_group_name}-RG" # Leveraging a variable to define this value in a different location
    location = "eastus2"
    tags = {
        Environment: var.environment_tag
     }
}