provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
  subscription_id = "25a98a18-5e94-4b21-9d17-e8cf45bfd81f"
  client_id       = "98402f85-e4a1-4d93-b58e-999590ee64bd"
  client_secret   = "4byUy4g~-9OKqqAbi3Mt_c.t4Li1MF_yi."
  tenant_id       = "558506eb-9459-4ef3-b920-ad55c555e729"
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
