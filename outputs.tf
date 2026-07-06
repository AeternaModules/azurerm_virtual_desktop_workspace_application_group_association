output "virtual_desktop_workspace_application_group_associations" {
  description = "All virtual_desktop_workspace_application_group_association resources"
  value       = azurerm_virtual_desktop_workspace_application_group_association.virtual_desktop_workspace_application_group_associations
}
output "virtual_desktop_workspace_application_group_associations_application_group_id" {
  description = "List of application_group_id values across all virtual_desktop_workspace_application_group_associations"
  value       = [for k, v in azurerm_virtual_desktop_workspace_application_group_association.virtual_desktop_workspace_application_group_associations : v.application_group_id]
}
output "virtual_desktop_workspace_application_group_associations_workspace_id" {
  description = "List of workspace_id values across all virtual_desktop_workspace_application_group_associations"
  value       = [for k, v in azurerm_virtual_desktop_workspace_application_group_association.virtual_desktop_workspace_application_group_associations : v.workspace_id]
}

