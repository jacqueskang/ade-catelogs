data "azurerm_resource_group" "main" {
  name = var.ADE_RESOURCE_GROUP_NAME
}

resource "azurerm_storage_account" "main" {
  name                     = "st${replace(var.ADE_ENVIRONMENT_NAME, "-", "")}01"
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}