{% comment %} terraform {
    backend "gcs" {
        bucket  = var.BACKEND_BUCKET
        prefix  = "terraform/state_file/terraform.tfstate"
    }
} {% endcomment %}
