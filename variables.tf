##########################################################################
### COMMON
##########################################################################
variable "region" {
  default     = null
  description = "The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically"
  type        = string
}

##########################################################################
### CONTAINER REGISTRY
##########################################################################
variable "create_container_registry" {
  default     = true
  description = "Determinates if create `container_registry` resource or not"
  type        = bool
}

variable "registry_name" {
  default     = null
  description = "Reqired if `create_container_registry` is set to `true`. The name of the container_registry"
  type        = string
}

variable "registry_subscription_tier_slug" {
  default     = "starter"
  description = "Reqired if `create_container_registry` is set to `true`. The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)"
  type        = string
}

##########################################################################
### KUBERNETES CLUSTER
##########################################################################
variable "create_kubernetes_cluster" {
  default     = true
  description = "Determinates if create `kubernetes_cluster` resource or not"
  type        = bool
}

variable "cluster_name" {
  default     = null
  description = "Reqired if `kubernetes_cluster_name` is set to `true`. A name for the Kubernetes cluster"
  type        = string
}

variable "cluster_version" {
  default     = null
  description = "Reqired if `kubernetes_cluster_name` is set to `true`.The slug identifier for the version of Kubernetes used for the cluster"
  type        = string
}

variable "cluster_node_pool" {
  default     = null
  description = "Reqired if `kubernetes_cluster_name` is set to `true`.A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean_kubernetes_node_pool` resource"
  type        = map(any)
}

variable "cluster_vpc_uuid" {
  default     = null
  description = "The ID of the VPC where the Kubernetes cluster will be located"
  type        = string
}

variable "cluster_auto_upgrade" {
  default     = true
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window"
  type        = bool
}

variable "cluster_surge_upgrade" {
  default     = false
  description = "Enable/disable surge upgrades for a cluster. Default: `false`"
  type        = bool
}

variable "cluster_ha" {
  default     = false
  description = "Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster. Default: `false`"
  type        = bool
}

variable "cluster_maintenance_policy" {
  default     = null
  description = "A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect."
  type = object({
    day        = string
    start_time = string
  })
}

variable "cluster_tags" {
  default     = null
  description = "A list of tag names to be applied to the Kubernetes cluster"
  type        = list(string)
}
