##########################################################################
### COMMON
##########################################################################
output "region" {
  description = "The slug identifier for the region"
  value       = try(var.region, "")
}

##########################################################################
### CONTAINER REGISTRY
##########################################################################
output "registry_id" {
  description = "The id of the container registry"
  value       = try(module.container_registry.this[0].id, "")
}

output "registry_name" {
  description = "The name of the container registry"
  value       = try(module.container_registry.this[0].name, "")
}

output "registry_endpoint" {
  description = "The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry"
  value       = try(module.container_registry.this[0].endpoint, "")
}

output "registry_subscription_tier_slug" {
  description = "The slug identifier for the subscription tier"
  value       = try(module.container_registry.this[0].subscription_tier_slug, "")
}

output "registry_server_url" {
  description = "The domain of the container registry. Ex: registry.digitalocean.com"
  value       = try(module.container_registry.this[0].server_url, "")
}

output "registry_storage_usage_bytes" {
  description = "The amount of storage used in the registry in bytes"
  value       = try(module.container_registry.this[0].storage_usage_bytes, "")
}

##########################################################################
### KUBERNETES CLUSTER
##########################################################################
output "cluster_id" {
  description = "A unique ID that can be used to identify and reference a Kubernetes cluster"
  value       = try(module.kubernetes_cluster[0].this.id, "")
}

output "cluster_endpoint" {
  description = "The base URL of the API server on the Kubernetes master node"
  value       = try(module.kubernetes_cluster[0].this.endpoint, "")
}

output "cluster_subnet" {
  description = "The range of IP addresses in the overlay network of the Kubernetes cluster"
  value       = try(module.kubernetes_cluster[0].this.cluster_subnet, "")
}

output "cluster_service_subnet" {
  description = "The range of assignable IP addresses for services running in the Kubernetes cluster"
  value       = try(module.kubernetes_cluster[0].this.service_subnet, "")
}

output "cluster_ipv4_address" {
  description = "The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+)"
  value       = try(module.kubernetes_cluster[0].this.ipv4_address, "")
}

output "cluster_status" {
  description = "A string indicating the current status of the cluster. Potential values include running, provisioning, and errored"
  value       = try(module.kubernetes_cluster[0].this.status, "")
}

output "cluster_auto_upgrade" {
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window"
  value       = try(module.kubernetes_cluster[0].this.auto_upgrade, "")
}

output "cluster_urn" {
  description = "The uniform resource name (URN) for the Kubernetes cluster"
  value       = try(module.kubernetes_cluster[0].this.urn, "")
}

output "kube_config_raw_config" {
  description = "The full contents of the Kubernetes cluster's kubeconfig file"
  value       = try(module.kubernetes_cluster[0].this.kube_config_raw_config, "")
}

output "kube_config_host" {
  description = "The URL of the API server on the Kubernetes master node"
  value       = try(module.kubernetes_cluster[0].this.kube_config_host, "")
}

output "kube_config_cluster_ca_certificate" {
  description = "The base64 encoded public certificate for the cluster's certificate authority"
  value       = try(module.kubernetes_cluster[0].this.kube_config_cluster_ca_certificate, "")
}

output "kube_config_token" {
  description = "The DigitalOcean API access token used by clients to access the cluster"
  value       = try(module.kubernetes_cluster[0].this.kube_config_token, "")
}

output "kube_config_client_key" {
  description = "The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster"
  value       = try(module.kubernetes_cluster[0].this.kube_config_client_key, "")
}

output "kube_config_client_certificate" {
  description = "The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster"
  value       = try(module.kubernetes_cluster[0].this.kube_config_client_certificate, "")
}

output "kube_config_expires_at" {
  description = "The date and time when the credentials will expire and need to be regenerated"
  value       = try(module.kubernetes_cluster[0].this.kube_config_expires_at, "")
}
