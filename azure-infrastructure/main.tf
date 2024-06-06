terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstate111storage1asses"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}



resource "random_id" "id" {
  byte_length = 8
}

resource "azurerm_resource_group" "rg" {
  name     = "devops-assess-rg"
  location = var.location
}

module "acr" {
  source              = "./modules/azure-acr"
  acr_name            = "acrdevopsassess"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

module "vnet" {
  source              = "./modules/azure-vnet"
  vnet_name           = "devops-assess-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_name         = "mySubnet"
  subnet_prefixes     = ["10.0.1.0/24"]
}

module "aks" {
  source              = "./modules/azure-aks"
  aks_name            = "devops-assess-aks-cluster"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "myaks"
  node_count          = 2
  vm_size             = "Standard_DS2_v2"
  subnet_id           = module.vnet.subnet_id
  service_cidr        = "10.1.0.0/16"
  dns_service_ip      = "10.1.0.10"
}

module "dns" {
  source              = "./modules/azure-dns"
  dns_zone_name       = "devops-assess.com"
  resource_group_name = azurerm_resource_group.rg.name
  dns_record_name     = "www"
  aks_fqdn            = module.aks.fqdn
  # records             = module.aks.fqdn
}
