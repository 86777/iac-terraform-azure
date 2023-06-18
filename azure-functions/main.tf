resource "azurerm_resource_group" {
  name = "resource_group"
  location = "East Europe"
}

resource "azurerm_storage_account" {
  name = "azurerm_storage_account"
  location = azurerm_resource_group.location
}

resource "azurerm_app_service_plan" {
  name = "azurerm_app_service_plan"
  location = "azurerm_resource_group.location
}

resource "azurerm_linux_function_app" {
  name = "azurerm_linux_function_app"
  location = azurerm_resource_group.location
}

resource "azurerm_function_app_function" {
  name = "azurerm_function_app_function"
  location = azurerm_resource_group.location
}
