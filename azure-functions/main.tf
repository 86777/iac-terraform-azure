resource "azurerm_resource_group" {
  name = "resource_group"
  location = "East Europe"
}

resource "azurerm_storage_account" {
  name = "azure-functions-test-rg"
  location = azurerm_resource_group.location
}

resource "azurerm_app_service_plan" {
  name = "azure-functions-test-rg"
  location = "azurerm_resource_group.location
}

resource "azurerm_linux_function_app" {
  name = "azure-functions-test-rg"
  location = azurerm_resource_group.location
}

resource "azurerm_function_app_function" {
  name = "azure-functions-test-rg"
  location = azurerm_resource_group.location
}
