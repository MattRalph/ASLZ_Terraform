terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 3.18.0"
      }
    }
}

provider "azurerm" {
    features{}
}

data "azurerm_client_config""core"{}

module "enterprise_scale"{
    source  = "Azure/caf-enterprise-scale/azurerm"
    version = ">= 3.74.0"

  providers = {
    azurerm = azurerm
    azurerm.connectivity = azurerm
    azurerm.management = azurerm 
  }
}

# Changed to version above from https://registry.terraform.io/modules/Azure/caf-enterprise-scale/azurerm/latest