variable "virtual_desktop_workspace_application_group_associations" {
  description = <<EOT
Map of virtual_desktop_workspace_application_group_associations, attributes below
Required:
    - application_group_id
    - workspace_id
EOT

  type = map(object({
    application_group_id = string
    workspace_id         = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_desktop_workspace_application_group_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: workspace_id
  #   source:    [from workspace.ValidateWorkspaceID] !ok
  # path: workspace_id
  #   source:    [from workspace.ValidateWorkspaceID] err != nil
  # path: application_group_id
  #   source:    [from applicationgroup.ValidateApplicationGroupID] !ok
  # path: application_group_id
  #   source:    [from applicationgroup.ValidateApplicationGroupID] err != nil
}

