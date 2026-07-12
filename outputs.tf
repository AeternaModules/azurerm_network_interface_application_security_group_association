output "network_interface_application_security_group_associations_application_security_group_id" {
  description = "Map of application_security_group_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = { for k, v in azurerm_network_interface_application_security_group_association.network_interface_application_security_group_associations : k => v.application_security_group_id }
}
output "network_interface_application_security_group_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = { for k, v in azurerm_network_interface_application_security_group_association.network_interface_application_security_group_associations : k => v.network_interface_id }
}

