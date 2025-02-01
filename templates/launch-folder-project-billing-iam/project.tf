resource "google_project" "stack_project" {
    name       = var.STACK_PROJECT
    project_id = var.PROJECT_ID
    org_id     = var.ORGANIZATION_ID
    billing_account = data.google_billing_account.billing_account.id(var.STACK_BILLING_ACCOUNT)
    labels = var.labels
    tags = var.tags
  }