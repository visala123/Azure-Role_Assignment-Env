provider "azurerm" {
  features {}
}

provider "azuread" {}

module "rbac_assignment" {
  source          = "../../modules/rbac"
  principal_name  = var.principal_name
  role_name       = var.role_name
  scope           = var.scope
  principal_object_id = var.principal_object_id
}