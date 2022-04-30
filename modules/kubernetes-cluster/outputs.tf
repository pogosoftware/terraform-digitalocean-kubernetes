output "cluster_id" {
  description = "A unique ID that can be used to identify and reference a Kubernetes cluster"
  value       = try(digitalocean_kubernetes_cluster.this.id, "")
}

output "cluster_subnet" {
  description = "The range of IP addresses in the overlay network of the Kubernetes cluster"
  value       = try(digitalocean_kubernetes_cluster.this.cluster_subnet, "")
}

output "cluster_service_subnet" {
  description = "The range of assignable IP addresses for services running in the Kubernetes cluster"
  value       = try(digitalocean_kubernetes_cluster.this.service_subnet, "")
}

output "cluster_ipv4_address" {
  description = "The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+)"
  value       = try(digitalocean_kubernetes_cluster.this.ipv4_address, "")
}

output "cluster_endpoint" {
  description = "The base URL of the API server on the Kubernetes master node"
  value       = try(digitalocean_kubernetes_cluster.this.endpoint, "")
}

output "cluster_status" {
  description = "A string indicating the current status of the cluster. Potential values include running, provisioning, and errored"
  value       = try(digitalocean_kubernetes_cluster.this.status, "")
}

output "cluster_auto_upgrade" {
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window"
  value       = try(digitalocean_kubernetes_cluster.this.auto_upgrade, "")
}

output "cluster_urn" {
  description = "The uniform resource name (URN) for the Kubernetes cluster"
  value       = try(digitalocean_kubernetes_cluster.this.urn, "")
}

##########################################################################
### KUBE_CONFIG
##########################################################################
output "kube_config_raw_config" {
  description = "The full contents of the Kubernetes cluster's kubeconfig file"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].raw_config, "")
}

output "kube_config_host" {
  description = "The URL of the API server on the Kubernetes master node"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].host, "")
}

output "kube_config_cluster_ca_certificate" {
  description = "The base64 encoded public certificate for the cluster's certificate authority"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate, "")
}

output "kube_config_token" {
  description = "The DigitalOcean API access token used by clients to access the cluster"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].token, "")
}

output "kube_config_client_key" {
  description = "The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].client_key, "")
}

output "kube_config_client_certificate" {
  description = "The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].client_certificate, "")
}

output "kube_config_expires_at" {
  description = "The date and time when the credentials will expire and need to be regenerated"
  value       = try(digitalocean_kubernetes_cluster.this.kube_config[0].expires_at, "")
}
