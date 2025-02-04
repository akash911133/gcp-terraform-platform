variable "BACKEND_BUCKET" {
  type = string
  default = "gcp-cloud-platform"
  description = "this is the default bucket for storing the statefile"
}

variable "ORGANIZATION_ID" {
  type = string
  default = "8496532541"
}




variable "STACK_PROJECT" {
    type = string
  }

 variable "STACK_FOLDER" {
  type = string
}

variable "STACK_BILLING_ACCOUNT" {
  type = string
}

variable "STACK_APIs" {
  type = string
}

variable "STACK_NAME" {
  type = string
}

variable "STACK_ID" {
  type = string
  description = "numeric-increment-number(1---99..)"
}

variable "CUSTOMER" {
  type = string
}

variable "CUSTOMER_SPECIFIC_IAM_ROLE_ARN" {
  type = string
}

variable "CUSTOMER_ID" {
  type        = string
  description = "The unique identifier for the customer extracted from the IAM role name."
}

variable "NUXEO_PACKAGES" {
  type    = string
  default = ""
}

variable "NUXEO_IMAGE_NAME" {
  type    = string
  default = ""
}

variable "NUXEO_IMAGE_TAG" {
  type    = string
  default = ""
}

variable "STACK_ENVIRONMENT" {
  type    = string
  default = ""
}

variable "STACK_ENVIRONMENT_NAME" {
  type    = string
  description = "dev/qa/preprod/prod"
}

variable "STACK_ENVIRONMENT_TYPE" {
  type    = string
  default = "dev"
}

variable "STACK_URL" {
  type = string
}