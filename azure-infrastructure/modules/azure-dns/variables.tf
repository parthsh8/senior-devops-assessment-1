variable "dns_zone_name" {
  description = "The name of the DNS zone"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_record_name" {
  description = "The name of the DNS record"
  type        = string
}

# variable "records" {
#   description = "The value of the DNS record"
#   type        = string
# }
variable "aks_fqdn" {
  description = "The FQDN of the AKS cluster"
  type        = string
}
