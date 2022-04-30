resource "digitalocean_kubernetes_cluster" "this" {
  name    = var.name
  region  = var.region
  version = var.kubernetes_version

  vpc_uuid      = var.vpc_uuid
  auto_upgrade  = var.auto_upgrade
  surge_upgrade = var.surge_upgrade
  ha            = var.ha

  tags = var.tags

  dynamic "node_pool" {
    for_each = var.node_pool

    content {
      name = each.key
      size = each.value.size

      node_count = lookup(each.value, "node_count", null)
      auto_scale = lookup(each.value, "auto_scale", null)
      min_nodes  = lookup(each.value, "min_nodes", null)
      max_nodes  = lookup(each.value, "max_nodes", null)
      tags       = lookup(each.value, "tags", null)
      labels     = lookup(each.value, "labels", null)
    }
  }

  dynamic "maintenance_policy" {
    for_each = var.maintenance_policy

    content {
      day        = each.value.day
      start_time = each.value.start_time
    }
  }
}
