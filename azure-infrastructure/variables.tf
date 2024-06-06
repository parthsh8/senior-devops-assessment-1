variable "client_id" {
  description = "client ID"

}
variable "client_secret" {
  description = "Client Secret ID"

}
variable "tenant_id" {
  description = "Tenant ID"

}

variable "subscription_id" {
  description = "Subscription ID"

}
variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"

}

