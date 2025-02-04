# Billing account creation is not recommended by terraform, You can create manually and attach to project..

data "google_billing_account" "billing_account_info" {
    display_name = "My Billing Account"
    open         = true
}
