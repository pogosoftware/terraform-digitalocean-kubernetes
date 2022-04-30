module "container_registry" {
  source = "./modules/container-registry"

  create = var.create_container_registry

  name                   = var.registry_name
  subscription_tier_slug = var.registry_subscription_tier_slug
  region                 = var.region
}

module "kubernetes_cluster" {
  source = "./modules/kubernetes-cluster"

  count = var.create_kubernetes_cluster ? 1 : 0

  name               = var.cluster_name
  region             = var.region
  kubernetes_version = var.cluster_version
  node_pool          = var.cluster_node_pool

  vpc_uuid           = var.cluster_vpc_uuid
  auto_upgrade       = var.cluster_auto_upgrade
  surge_upgrade      = var.cluster_surge_upgrade
  ha                 = var.cluster_ha
  maintenance_policy = var.cluster_maintenance_policy
  tags               = var.cluster_tags
}
