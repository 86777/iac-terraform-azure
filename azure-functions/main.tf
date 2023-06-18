resource "azurerm_resource_group" "example" {
  name = "resource_group"
  location = "East Europe"
}

resource "azurerm_storage_account" "example" {
  name = "azurerm_storage_account"
  location = azurerm_resource_group.example.location
}

resource "azurerm_app_service_plan" "example" {
  name = "azurerm_app_service_plan"
  location = "azurerm_resource_group.example.location
}

resource "azurerm_linux_function_app" "example" {
  name = "azurerm_linux_function_app"
  location = azurerm_resource_group.example.location
}

resource "azurerm_function_app_function" "example" {
  name = "azurerm_function_app_function"
  location = azurerm_resource_group.example.location
}
