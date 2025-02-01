provider "google" {
    project = var.STACK_PROJECT_ID
    region  = var.STACK_REGION 
    default_tags {
        tags = {
          Name                   = var.STACK_NAME
          description            = "decription"
          managed_by             = "terraform"
          infrastructure-version = var.NCO_VERSION
          contact                = var.CONTACT_EMAIL
          customer               = var.CUSTOMER
          stack_project          = var.STACK_PROJECT
          billing-category       = var.STACK_BILLING_CATEGORY
          billing-subcategory    = var.STACK_BILLING_SUB_CATEGORY
          stack_folder           = var.STACK_FOLDER 
        }
      }  
}

terraform {
    required_version = ">=1.2.9"
    required_providers {
      google = {
        source  = "hashicorp/google"
        version = "~> 4.0"
      }
    }
}
  