resource "digitalocean_container_registry" "this" {
  count = var.create ? 1 : 0

  name                   = var.name
  subscription_tier_slug = var.subscription_tier_slug
  region                 = var.region
}
