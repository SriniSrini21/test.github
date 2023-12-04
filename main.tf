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
  features {}
  client_id       = "b3cd955f-8544-41d2-aee4-7e0cb6a5bd2d"
  client_secret   =  "xuy8Q~Ktm3VVRtO~5aTB3Cu6Jp3KUI6O7Ftroazx"
  tenant_id       = "5ce5fed3-0a25-4f4d-8697-e4b70519b7f2"
  subscription_id = "79b014ea-6a1a-4930-9818-fddc78b6ce5c"
}

resource "azurerm_resource_group" "example" {
  name     = "example-githubactions"
  location = "West Europe"
}
