output workspace_id {
  value = tfe_workspace.tfc_prd_workspace.id 
}

output prd_service_account_name {
  value = google_service_account.prd_tfc_service_account.name
}


