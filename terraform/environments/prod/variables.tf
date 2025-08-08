variable "principal_name" {
  type        = string
  description = "UPN of the Azure AD user"
}

variable "role_name" {
  type        = string
  description = "Azure built-in role name"
}

variable "scope" {
  type        = string
  description = "Scope (e.g., subscription ID or resource group ID)"
  default     = ""
}
variable "principal_object_id" {
  type        = string
  description = "The object ID of the principal"
}
