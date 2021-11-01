# Variable values can be defined within the *.tfvars file to remove hard coded values from the main.tf file

# Resource Variables #
resource_group_name = "myresource-group" # Optionally Update. A value here will remove any "default" value defined in the variables.tf file

# Tagging Variables #
environment_tag     = "development" # Optionally Update