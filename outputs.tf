##########################################################################
### container_registry
##########################################################################
output "container_registry_id" {
  description = "The id of the container registry"
  value       = try(module.container_registry.this[0].id, "")
}

output "container_registry_name" {
  description = "The name of the container registry"
  value       = try(module.container_registry.this[0].name, "")
}

output "container_registry_subscription_tier_slug" {
  description = "The slug identifier for the subscription tier"
  value       = try(module.container_registry.this[0].subscription_tier_slug, "")
}

output "container_registry_region" {
  description = "The slug identifier for the region"
  value       = try(module.container_registry.this[0].region, "")
}

output "container_registry_endpoint" {
  description = "The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry"
  value       = try(module.container_registry.this[0].endpoint, "")
}

output "container_registry_server_url" {
  description = "The domain of the container registry. Ex: registry.digitalocean.com"
  value       = try(module.container_registry.this[0].server_url, "")
}

output "container_registry_storage_usage_bytes" {
  description = "The amount of storage used in the registry in bytes"
  value       = try(module.container_registry.this[0].storage_usage_bytes, "")
}

output "container_registry_created_at" {
  description = "The date and time when the registry was created"
  value       = try(module.container_registry.this[0].created_at, "")
}
