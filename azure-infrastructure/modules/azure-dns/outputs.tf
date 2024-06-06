output "dns_zone_name" {
  value = azurerm_dns_zone.dns_zone.name
}

output "dns_record_name" {
  # value = azurerm_dns_a_record.dns_record.name
  value = azurerm_dns_cname_record.dns_record.name
}
