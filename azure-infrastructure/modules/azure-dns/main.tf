
# data "azurerm_kubernetes_cluster" "aks" {
#   name                = module.azure-aks.aks_name
#   resource_group_name = module.azure-aks.resource_group_name
# }


resource "azurerm_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name
}

# resource "azurerm_dns_a_record" "dns_record" {
#   name                = var.dns_record_name
#   zone_name           = azurerm_dns_zone.dns_zone.name
#   resource_group_name = var.resource_group_name
#   ttl                 = 300
#   records             = [var.aks_fqdn]
#   # records             = [data.azurerm_kubernetes_cluster.aks.fqdn]
# }
resource "azurerm_dns_cname_record" "dns_record" {
  name                = var.dns_record_name
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  record              = var.aks_fqdn
}



