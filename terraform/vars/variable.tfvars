conregistryname          = "azurefuncacr"
container_registry_sku           = "Basic"
function_app_name                = "pocfunctionapp"
function_app_os_type             = "linux"
function_app_version             = "~4"
app_service_plan_name            = "funcserviceplan"
app_service_plan_type            = "Linux"
app_service_plan_tier            = "Basic"
app_service_plan_size            = "P1V2"
storage_name                     = "funcpocstorage"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"
location                         = "West Europe"
resource_group_name              = "azurefuncpocrg"
role_assignment_name             = "acrpull_role"     
image_tag                        = "v0.0.2"
image                            = "azurefunctionsimage"
container_name                   = "azurefunction"