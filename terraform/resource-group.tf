resource "azurerm_resource_group" "NN_resource_group" {
  name     = var.resource_group_name
  location = var.location
}