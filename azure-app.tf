terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}


provider "azurerm" {

  features {}

}

resource "azurerm_resource_group" "rg" {
  name     = "azureAppResourceGroup"
  location = "West Europe"
}

# Generates a random integer with minimum and maximum number range to be used for creating unique resource names
resource "azure