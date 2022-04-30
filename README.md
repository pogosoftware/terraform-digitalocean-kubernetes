# terraform-digitalocean-kubernetes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_container_registry"></a> [container\_registry](#module\_container\_registry) | ./modules/container-registry | n/a |
| <a name="module_kubernetes_cluster"></a> [kubernetes\_cluster](#module\_kubernetes\_cluster) | ./modules/kubernetes-cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_auto_upgrade"></a> [cluster\_auto\_upgrade](#input\_cluster\_auto\_upgrade) | A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window | `bool` | `true` | no |
| <a name="input_cluster_ha"></a> [cluster\_ha](#input\_cluster\_ha) | Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster. Default: `false` | `bool` | `false` | no |
| <a name="input_cluster_maintenance_policy"></a> [cluster\_maintenance\_policy](#input\_cluster\_maintenance\_policy) | A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect. | <pre>object({<br>    day        = string<br>    start_time = string<br>  })</pre> | `null` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Reqired if `kubernetes_cluster_name` is set to `true`. A name for the Kubernetes cluster | `string` | `null` | no |
| <a name="input_cluster_node_pool"></a> [cluster\_node\_pool](#input\_cluster\_node\_pool) | Reqired if `kubernetes_cluster_name` is set to `true`.A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean_kubernetes_node_pool` resource | `map(any)` | `null` | no |
| <a name="input_cluster_surge_upgrade"></a> [cluster\_surge\_upgrade](#input\_cluster\_surge\_upgrade) | Enable/disable surge upgrades for a cluster. Default: `false` | `bool` | `false` | no |
| <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags) | A list of tag names to be applied to the Kubernetes cluster | `list(string)` | `null` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Reqired if `kubernetes_cluster_name` is set to `true`.The slug identifier for the version of Kubernetes used for the cluster | `string` | `null` | no |
| <a name="input_cluster_vpc_uuid"></a> [cluster\_vpc\_uuid](#input\_cluster\_vpc\_uuid) | The ID of the VPC where the Kubernetes cluster will be located | `string` | `null` | no |
| <a name="input_create_container_registry"></a> [create\_container\_registry](#input\_create\_container\_registry) | Determinates if create `container_registry` resource or not | `bool` | `true` | no |
| <a name="input_create_kubernetes_cluster"></a> [create\_kubernetes\_cluster](#input\_create\_kubernetes\_cluster) | Determinates if create `kubernetes_cluster` resource or not | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically | `string` | `null` | no |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | Reqired if `create_container_registry` is set to `true`. The name of the container\_registry | `string` | `null` | no |
| <a name="input_registry_subscription_tier_slug"></a> [registry\_subscription\_tier\_slug](#input\_registry\_subscription\_tier\_slug) | Reqired if `create_container_registry` is set to `true`. The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`) | `string` | `"starter"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_auto_upgrade"></a> [cluster\_auto\_upgrade](#output\_cluster\_auto\_upgrade) | A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The base URL of the API server on the Kubernetes master node |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | A unique ID that can be used to identify and reference a Kubernetes cluster |
| <a name="output_cluster_ipv4_address"></a> [cluster\_ipv4\_address](#output\_cluster\_ipv4\_address) | The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+) |
| <a name="output_cluster_service_subnet"></a> [cluster\_service\_subnet](#output\_cluster\_service\_subnet) | The range of assignable IP addresses for services running in the Kubernetes cluster |
| <a name="output_cluster_status"></a> [cluster\_status](#output\_cluster\_status) | A string indicating the current status of the cluster. Potential values include running, provisioning, and errored |
| <a name="output_cluster_subnet"></a> [cluster\_subnet](#output\_cluster\_subnet) | The range of IP addresses in the overlay network of the Kubernetes cluster |
| <a name="output_cluster_urn"></a> [cluster\_urn](#output\_cluster\_urn) | The uniform resource name (URN) for the Kubernetes cluster |
| <a name="output_kube_config_client_certificate"></a> [kube\_config\_client\_certificate](#output\_kube\_config\_client\_certificate) | The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster |
| <a name="output_kube_config_client_key"></a> [kube\_config\_client\_key](#output\_kube\_config\_client\_key) | The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster |
| <a name="output_kube_config_cluster_ca_certificate"></a> [kube\_config\_cluster\_ca\_certificate](#output\_kube\_config\_cluster\_ca\_certificate) | The base64 encoded public certificate for the cluster's certificate authority |
| <a name="output_kube_config_expires_at"></a> [kube\_config\_expires\_at](#output\_kube\_config\_expires\_at) | The date and time when the credentials will expire and need to be regenerated |
| <a name="output_kube_config_host"></a> [kube\_config\_host](#output\_kube\_config\_host) | The URL of the API server on the Kubernetes master node |
| <a name="output_kube_config_raw_config"></a> [kube\_config\_raw\_config](#output\_kube\_config\_raw\_config) | The full contents of the Kubernetes cluster's kubeconfig file |
| <a name="output_kube_config_token"></a> [kube\_config\_token](#output\_kube\_config\_token) | The DigitalOcean API access token used by clients to access the cluster |
| <a name="output_region"></a> [region](#output\_region) | The slug identifier for the region |
| <a name="output_registry_endpoint"></a> [registry\_endpoint](#output\_registry\_endpoint) | The URL endpoint of the container registry. Ex: registry.digitalocean.com/my\_registry |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | The id of the container registry |
| <a name="output_registry_name"></a> [registry\_name](#output\_registry\_name) | The name of the container registry |
| <a name="output_registry_server_url"></a> [registry\_server\_url](#output\_registry\_server\_url) | The domain of the container registry. Ex: registry.digitalocean.com |
| <a name="output_registry_storage_usage_bytes"></a> [registry\_storage\_usage\_bytes](#output\_registry\_storage\_usage\_bytes) | The amount of storage used in the registry in bytes |
| <a name="output_registry_subscription_tier_slug"></a> [registry\_subscription\_tier\_slug](#output\_registry\_subscription\_tier\_slug) | The slug identifier for the subscription tier |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->