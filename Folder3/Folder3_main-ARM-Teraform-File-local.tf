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
  region     = var.arm_region
  secret_key = var.arm_secret_key
}

variable "arm_secret_key" {
}
variable "arm_region" {
}

variable "mycloud_vpcid" {
  description = "Name of the vpc used for security group"
  default     = "test"
}

variable "azurerm_resource_group" {
  description = "Name of the resource group"
  default     = "test"
}

 tags =var.sg_tags

}
