output "virtual_desktop_workspace_application_group_associations_application_group_id" {
  description = "Map of application_group_id values across all virtual_desktop_workspace_application_group_associations, keyed the same as var.virtual_desktop_workspace_application_group_associations"
  value       = { for k, v in azurerm_virtual_desktop_workspace_application_group_association.virtual_desktop_workspace_application_group_associations : k => v.application_group_id }
}
output "virtual_desktop_workspace_application_group_associations_workspace_id" {
  description = "Map of workspace_id values across all virtual_desktop_workspace_application_group_associations, keyed the same as var.virtual_desktop_workspace_application_group_associations"
  value       = { for k, v in azurerm_virtual_desktop_workspace_application_group_association.virtual_desktop_workspace_application_group_associations : k => v.workspace_id }
}

