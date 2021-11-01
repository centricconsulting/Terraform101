# Resource Variables #
variable "resource_group_name" {
    description = "The name of the resource group"
    default = "example123" # If no value is defined, this will be the default value
}

# Tagging Variables #
variable "environment_tag" {
    description = "The name of the environment tag" 
    # No default value is defined meaning it must be defined by the user in the terraform.tfvars or when using the planning/applying command 
}