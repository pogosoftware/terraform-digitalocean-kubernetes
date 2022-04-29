module "container_registry" {
  source = "./modules/container-registry"

  create = var.create_container_registry

  name                   = var.container_registry_name
  subscription_tier_slug = var.container_registry_subscription_tier_slug
  region                 = var.container_registry_region
}
