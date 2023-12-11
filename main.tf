provider "azurerm" {
    features {}
}


# 1. Create a resource group
resource "azurerm_resource_group" "rg01" {
  name     = "rg01-b1"
  location = "East US"
  //location = var.region
}

# 2. Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "vnet1"
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  address_space       = ["10.0.0.0/16"]
 
}
