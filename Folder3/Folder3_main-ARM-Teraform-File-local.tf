terraform { 
			backend "local" {} 
			}

locals {
  standard_tags = {
    Component   = "user-service"
    Environment = "production"
  }
}

provider "arm" {
client_secret = var.clientsecretkey
subscription_id = var.azuresubscriptionid
tenant_id = var.tenantid
client_id = var.nativclientid
}

variable "clientsecretkey" {
}
variable "azuresubscriptionid" {
}
variable "tenantid" {
	
}variable "nativclientid" {
}

resource "azurerm_resource_group" "ResourceGroup1" {
name = "ResourceGroup1_LandingZone"
location = "eastus"
}

}
