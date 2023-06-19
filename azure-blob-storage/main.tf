resource "azurerm_resource_group" "example" {
  name = resource_group_name
  location = "East Europe"
}

resource "azurerm_storage_account" "example" {
  name = storage_account_name
  resource_group_name = azurerm_resource_group.example
  location = azurerm_resource_group.example.location
}

resource "azurerm_storage_container" "example" {
  name = storage_container_name
  resource_group_name = azurerm_resource_group.example
  storage_account_name = azurerm_storage_account.example
}

resource "azurerm_storage_blob" "example" {
  name = storage_blob_name
  resource_group_name = azurerm_resource_group.example
  storage_account_name = azurerm_storage_account.example
  storage_container_name = azurerm_storage_container.example
}
