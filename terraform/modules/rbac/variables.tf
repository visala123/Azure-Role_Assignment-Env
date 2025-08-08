variable "principal_name" {
  description = "User Principal Name (UPN) of the Azure AD user"
  type        = string
}

variable "role_name" {
  description = "Name of the Azure role to assign"
  type        = string
}

variable "scope" {
  description = "Scope at which the role assignment should be done (default is subscription)"
  type        = string
  default     = ""
}

variable "principal_object_id" {
  type        = string
  description = "The object ID of the principal"
}