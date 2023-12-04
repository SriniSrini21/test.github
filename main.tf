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

  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-githubactions"
  location = "West Europe"
}
