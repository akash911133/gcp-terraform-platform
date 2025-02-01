resource "google_folder" "department1" {
    display_name = "Department 1"
    parent       = "${var.ORGANIZATION_ID}/1234567"
  }