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
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan."
}

variable "acr_name" {
  description = "Name of the Azure Container Registry."
}
