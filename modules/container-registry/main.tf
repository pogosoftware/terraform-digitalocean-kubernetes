resource "digitalocean_container_registry" "this" {
  name                   = var.registry_name
  subscription_tier_slug = var.registry_subscription_tier_slug
  region                 = var.region
}
