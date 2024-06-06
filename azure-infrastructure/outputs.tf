output "acr_login_server" {
  value = module.acr.acr_login_server
}
output "acr_name" {
  value = module.acr.acr_name
}

output "aks_kube_config" {
  sensitive = true
  value     = module.aks.kube_config
}

output "dns_zone_name" {
  value = module.dns.dns_zone_name
}

output "dns_record_name" {
  value = module.dns.dns_record_name
}
