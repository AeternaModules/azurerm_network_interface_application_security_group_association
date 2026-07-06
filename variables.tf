variable "network_interface_application_security_group_associations" {
  description = <<EOT
Map of network_interface_application_security_group_associations, attributes below
Required:
    - application_security_group_id
    - network_interface_id
EOT

  type = map(object({
    application_security_group_id = string
    network_interface_id          = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_network_interface_application_security_group_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] !ok
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] err != nil
  # path: application_security_group_id
  #   source:    [from applicationsecuritygroups.ValidateApplicationSecurityGroupID] !ok
  # path: application_security_group_id
  #   source:    [from applicationsecuritygroups.ValidateApplicationSecurityGroupID] err != nil
}

