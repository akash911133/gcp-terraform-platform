terraform {
    backend "gcs" {
        bucket  = var.BACKEND_BUCKET
        prefix  = "terraform/state_file/terraform.tfstate"  # Optional: Organize state files with a prefix
    }
}

  