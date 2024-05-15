# variables.tf

variable "resource_group_name-location" {
  description = "Name of the resource group location."
    default     = "eastus"
}

variable "resource_group_name-" {
  description = "Name of the resource group ."
    default     = "azuredevops"
}

variable "location" {
  description = "Azure region."
  default     = "eastus"
}

variable "app_service_name" {
  description = "Name of the Azure App Service."
   default = "asdasfasghgf"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan."
  default = "asdasfasfasf"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry."
   default = "asdasfasuhjghj"
}
