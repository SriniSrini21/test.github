terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {

  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   =  secrets.client_secret
  tenant_id       = "10000000-0000-0000-0000-000000000000"
  subscription_id = "20000000-0000-0000-0000-000000000000"

  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-githubactions"
  location = "West Europe"
}
