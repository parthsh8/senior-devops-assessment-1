output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "fqdn" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}
output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "resource_group_name" {
  value = azurerm_kubernetes_cluster.aks.resource_group_name
}
