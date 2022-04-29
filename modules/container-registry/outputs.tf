output "id" {
  description = "The id of the container registry"
  value       = try(digitalocean_container_registry.this[0].id, "")
}

output "name" {
  description = "The name of the container registry"
  value       = try(digitalocean_container_registry.this[0].name, "")
}

output "subscription_tier_slug" {
  description = "The slug identifier for the subscription tier"
  value       = try(digitalocean_container_registry.this[0].subscription_tier_slug, "")
}

output "region" {
  description = "The slug identifier for the region"
  value       = try(digitalocean_container_registry.this[0].region, "")
}

output "endpoint" {
  description = "The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry"
  value       = try(digitalocean_container_registry.this[0].endpoint, "")
}

output "server_url" {
  description = "The domain of the container registry. Ex: registry.digitalocean.com"
  value       = try(digitalocean_container_registry.this[0].server_url, "")
}

output "storage_usage_bytes" {
  description = "The amount of storage used in the registry in bytes"
  value       = try(digitalocean_container_registry.this[0].storage_usage_bytes, "")
}

output "created_at" {
  description = "The date and time when the registry was created"
  value       = try(digitalocean_container_registry.this[0].created_at, "")
}
