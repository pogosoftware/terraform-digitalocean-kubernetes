resource "digitalocean_kubernetes_cluster" "this" {
  name    = var.cluster_name
  region  = var.region
  version = var.cluster_version

  vpc_uuid      = var.cluster_vpc_uuid
  auto_upgrade  = var.cluster_auto_upgrade
  surge_upgrade = var.cluster_surge_upgrade
  ha            = var.cluster_ha

  tags = var.cluster_tags

  dynamic "node_pool" {
    for_each = var.cluster_node_pool

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
    for_each = var.cluster_maintenance_policy

    content {
      day        = each.value.day
      start_time = each.value.start_time
    }
  }
}
