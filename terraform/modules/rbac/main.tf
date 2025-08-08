data "azurerm_subscription" "current" {}

data "azurerm_role_definition" "selected" {
  name  = var.role_name
  scope = var.scope != "" ? var.scope : data.azurerm_subscription.current.id
}

# data "azuread_user" "principal" {
#   user_principal_name = var.principal_name
# }

resource "azurerm_role_assignment" "assign" {
  scope                = var.scope != "" ? var.scope : data.azurerm_subscription.current.id
  role_definition_id   = data.azurerm_role_definition.selected.id
  principal_id         = var.principal_object_id
  principal_type       = "User"
}
