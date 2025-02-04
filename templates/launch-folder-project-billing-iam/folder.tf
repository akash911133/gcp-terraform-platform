
resource "google_folder" "department1" {
    display_name = var.STACK_FOLDER
    parent       = "${var.ORGANIZATION_ID}/1234567"
}


# A service account is a special kind of account that is typically used by applications and 
# virtual machines in your Google Cloud project to access APIs and services.  
# Applications and users can authenticate as a service account using generated service account keys. 