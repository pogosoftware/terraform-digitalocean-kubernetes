##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "The name of the container_registry"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create" {
  default     = true
  description = "Determinates if create resource or not"
  type        = bool
}

variable "subscription_tier_slug" {
  default     = "starter"
  description = "The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)"
  type        = string
}

variable "region" {
  default     = null
  description = "he slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically"
  type        = string
}
