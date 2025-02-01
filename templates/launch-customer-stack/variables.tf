variable "network" {
type        = string
default     = ""
}

variable "subnetwork" {
description = "The name of the subnetwork to attach this interface to. The subnetwork must exist in the same region this instance will be created in. Either network or subnetwork must be provided."
type        = string
default     = ""
}

variable "subnetwork_project" {
description = "The ID of the project in which the subnetwork belongs. If it is not provided, the provider project is used."
type        = string
default     = ""
}

variable "network_ip" {
description = "Private IP address to assign to the instance if desired."
type        = string
default     = ""
}

variable "stack_type" {
description = "The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are `IPV4_IPV6` or `IPV4_ONLY`. Default behavior is equivalent to IPV4_ONLY."
type        = string
default     = null
}

variable "total_egress_bandwidth_tier" {
description = "Egress bandwidth tier setting for supported VM families"
type        = string
default     = "DEFAULT"
validation {
    condition     = contains(["DEFAULT", "TIER_1"], var.total_egress_bandwidth_tier)
    error_message = "Allowed values for bandwidth_tier are 'DEFAULT' or 'TIER_1'."
}
}

###########
# metadata
###########

variable "startup_script" {
description = "User startup script to run when instances spin up"
type        = string
default     = ""
}

variable "metadata" {
type        = map(string)
description = "Metadata, provided as a map"
default     = {}
}

##################
# service_account
##################

variable "service_account" {
type = object({
    email  = string
    scopes = optional(set(string), ["cloud-platform"])
})
}

variable "confidential_instance_type" {
type        = string
default     = null
description = "Defines the confidential computing technology the instance uses. If this is set to \"SEV_SNP\", var.min_cpu_platform will be automatically set to \"AMD Milan\". See https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#confidential_instance_type."
}

variable "access_config" {
description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
type = list(object({
    nat_ip       = string
    network_tier = string
}))
default = []
}
