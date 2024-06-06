variable "org_service_url" {
  description = "The URL of the Azure DevOps organization"
  type        = string
}

variable "personal_access_token" {
  description = "The personal access token for Azure DevOps"
  type        = string
  sensitive   = true
}
