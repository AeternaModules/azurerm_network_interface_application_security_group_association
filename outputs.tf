output "network_interface_application_security_group_associations_id" {
  description = "Map of id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = { for k, v in azurerm_network_interface_application_security_group_association.network_interface_application_security_group_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_interface_application_security_group_associations_application_security_group_id" {
  description = "Map of application_security_group_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = { for k, v in azurerm_network_interface_application_security_group_association.network_interface_application_security_group_associations : k => v.application_security_group_id if v.application_security_group_id != null && length(v.application_security_group_id) > 0 }
}
output "network_interface_application_security_group_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = { for k, v in azurerm_network_interface_application_security_group_association.network_interface_application_security_group_associations : k => v.network_interface_id if v.network_interface_id != null && length(v.network_interface_id) > 0 }
}

