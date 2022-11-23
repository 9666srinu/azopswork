terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "577d86e5-443e-4ef3-9d14-30d055a141b5"
}


resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = "eastus"
}