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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

