resource "azurerm_linux_function_app" "azure_function" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = azurerm_resource_group.NN_resource_group.name
  service_plan_id            = azurerm_service_plan.function_app_service_plan.id
  storage_account_name       =var.storage_name
  

  identity {
    type = "SystemAssigned"
  }
  site_config {
    linux_fx_version = "DOCKER|${var.conregistryname}.azurecr.io/${var.image}:${var.image_tag}"
    always_on = true
  }

 
}
resource "azurerm_role_assignment" "acrpull" {
  name               = var.role_assignment_name
  scope              = azurerm_resource_group.NN_resource_group.id
  role_definition_id = "AcrPull"
  principal_id       = azurerm_linux_function_app.azure_function.identity
}