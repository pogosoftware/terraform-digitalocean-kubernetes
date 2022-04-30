##########################################################################
### COMMON
##########################################################################
variable "region" {
  default     = null
  description = "The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically"
  type        = string
}

##########################################################################
### REQUIRED
##########################################################################
variable "registry_name" {
  description = "The name of the container_registry"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "registry_subscription_tier_slug" {
  default     = "starter"
  description = "The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)"
  type        = string
}
