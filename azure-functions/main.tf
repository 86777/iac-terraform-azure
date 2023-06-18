resource "azurerm_resource_group" "example" {
  name = "resource_group"
  location = "East Europe"
}

resource "azurerm_storage_account" "example" {
  name = "azurerm_storage_account"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
}

resource "azurerm_app_service_plan" "example" {
  name = "azurerm_app_service_plan"
  resource_group_name = azurerm_resource_group.example.name
  location = "azurerm_resource_group.example.location
  app_service_plan_id = azurerm_app_service_plan.example.id
}

resource "azurerm_linux_function_app" "example" {
  name = "azurerm_linux_function_app"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
}

resource "azurerm_function_app_function" "example" {
  name = "azurerm_function_app_function"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
}
