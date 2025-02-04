resource "google_project" "stack_project" {
  name       = var.STACK_PROJECT
  project_id = var.PROJECT_ID
  org_id     = var.ORGANIZATION_ID
  billing_account = data.google_billing_account.billing_account.id(var.STACK_BILLING_ACCOUNT)
  labels = merge({"Name" = var.STACK_PROJECT} , var.labels)
  tags = merge({var.STACK_PROJECT} , var.tags)
}
