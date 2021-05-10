provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

terraform {
  backend "remote" {
    organization = "zm-intern06"

    workspaces {
      name = "PresentatCI-CD"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "testterraform"
  location = "westeurope"
}
