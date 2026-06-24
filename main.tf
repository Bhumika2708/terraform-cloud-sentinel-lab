terraform {
  cloud {
    organization = "Breezy_Labskraft"

    workspaces {
      name = "azure-sentinel-governance"
    }
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "productiongroup"
  location = "East US"
}
