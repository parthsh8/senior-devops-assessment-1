variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  type        = string
}

variable "location" {
  description = "The location of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the VMs in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}
variable "service_cidr" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}

variable "dns_service_ip" {
  description = "The DNS service IP for the AKS cluster"
  type        = string
}

