resource "azurerm_container_registry" "azure_container_reg" {
  name                = var.conregistryname
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.container_registry_sku

  identity {
    type = "SystemAssigned"
    
  }
}


