# billing account creation is not recommended by terraform 

data "google_billing_account" "billing_account" {
    display_name = "My Billing Account"
    open         = true
}
