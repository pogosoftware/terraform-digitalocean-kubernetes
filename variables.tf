##########################################################################
### container_registry
##########################################################################
variable "create_container_registry" {
  default     = true
  description = "Determinates if create container_registry resource or not"
  type        = bool
}

variable "container_registry_name" {
  description = "Reqired if `` is set to `true`. The name of the container_registry"
  type        = string
}

variable "container_registry_subscription_tier_slug" {
  default     = "starter"
  description = "The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)"
  type        = string
}

variable "container_registry_region" {
  default     = null
  description = "he slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically"
  type        = string
}
