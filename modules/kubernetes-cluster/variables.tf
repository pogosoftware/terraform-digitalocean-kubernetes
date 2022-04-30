##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "A name for the Kubernetes cluster"
  type        = string
}

variable "region" {
  description = "The slug identifier for the region where the Kubernetes cluster will be created"
  type        = string
}

variable "kubernetes_version" {
  description = "The slug identifier for the version of Kubernetes used for the cluster"
  type        = string
}

variable "node_pool" {
  description = "A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean_kubernetes_node_pool` resource"
  type        = map(any)
}

##########################################################################
### OPTIONAL
##########################################################################
variable "vpc_uuid" {
  default     = null
  description = "The ID of the VPC where the Kubernetes cluster will be located"
  type        = string
}

variable "auto_upgrade" {
  default     = true
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window"
  type        = bool
}

variable "surge_upgrade" {
  default     = false
  description = "Enable/disable surge upgrades for a cluster. Default: `false`"
  type        = bool
}

variable "ha" {
  default     = false
  description = "Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster. Default: `false`"
  type        = bool
}

variable "maintenance_policy" {
  default     = null
  description = "A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect."
  type = object({
    day        = string
    start_time = string
  })
}

variable "tags" {
  default     = null
  description = "A list of tag names to be applied to the Kubernetes cluster"
  type        = list(string)
}
