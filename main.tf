terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-backend"
    storage_account_name = "tfbackenddavid"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
  source = "./modules/rg"

  rg_name = "rg-demo-david"
  location = "westeurope"
}
