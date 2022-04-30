##########################################################################
### COMMON
##########################################################################
output "region" {
  description = "The slug identifier for the region"
  value       = try(digitalocean_container_registry.this.region, "")
}

##########################################################################
### CONTAINER REGISTRY
##########################################################################
output "registry_id" {
  description = "The id of the container registry"
  value       = try(digitalocean_container_registry.this.id, "")
}

output "registry_name" {
  description = "The name of the container registry"
  value       = try(digitalocean_container_registry.this.name, "")
}

output "registry_subscription_tier_slug" {
  description = "The slug identifier for the subscription tier"
  value       = try(digitalocean_container_registry.this.subscription_tier_slug, "")
}

output "registry_endpoint" {
  description = "The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry"
  value       = try(digitalocean_container_registry.this.endpoint, "")
}

output "registry_server_url" {
  description = "The domain of the container registry. Ex: registry.digitalocean.com"
  value       = try(digitalocean_container_registry.this.server_url, "")
}

output "registry_storage_usage_bytes" {
  description = "The amount of storage used in the registry in bytes"
  value       = try(digitalocean_container_registry.this.storage_usage_bytes, "")
}
