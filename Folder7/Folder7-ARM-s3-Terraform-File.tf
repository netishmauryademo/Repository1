terraform {	
backend "local" {} 	
required_version =">=0.12"
required_providers {
azurerm = {
source = "hashicorp/azurerm"
version ="=2.79.0"
}
}
}
locals {
  standard_tags = {
    Component   = "user-service"
    Environment = "production"
  }
}
provider "azurerm" {
client_secret = var.clientsecretkey
subscription_id = var.azuresubscriptionid
tenant_id = var.tenantid
client_id = var.nativclientid	
features {
      }
}
variable "clientsecretkey" {
}
variable "azuresubscriptionid" {
}
variable "tenantid" {	
}
variable "nativclientid" {
}
resource "azurerm_resource_group" "ResourceGroup1" {
name = "ResourceGroup4_LandingZone"
location = "eastus"
}
