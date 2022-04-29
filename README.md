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

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_name"></a> [container\_registry\_name](#input\_container\_registry\_name) | Reqired if ` is set to `true`. The name of the container_registry` | `string` | n/a | yes |
| <a name="input_container_registry_region"></a> [container\_registry\_region](#input\_container\_registry\_region) | he slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically | `string` | `null` | no |
| <a name="input_container_registry_subscription_tier_slug"></a> [container\_registry\_subscription\_tier\_slug](#input\_container\_registry\_subscription\_tier\_slug) | The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`) | `string` | `"starter"` | no |
| <a name="input_create_container_registry"></a> [create\_container\_registry](#input\_create\_container\_registry) | Determinates if create container\_registry resource or not | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_registry_created_at"></a> [container\_registry\_created\_at](#output\_container\_registry\_created\_at) | The date and time when the registry was created |
| <a name="output_container_registry_endpoint"></a> [container\_registry\_endpoint](#output\_container\_registry\_endpoint) | The URL endpoint of the container registry. Ex: registry.digitalocean.com/my\_registry |
| <a name="output_container_registry_id"></a> [container\_registry\_id](#output\_container\_registry\_id) | The id of the container registry |
| <a name="output_container_registry_name"></a> [container\_registry\_name](#output\_container\_registry\_name) | The name of the container registry |
| <a name="output_container_registry_region"></a> [container\_registry\_region](#output\_container\_registry\_region) | The slug identifier for the region |
| <a name="output_container_registry_server_url"></a> [container\_registry\_server\_url](#output\_container\_registry\_server\_url) | The domain of the container registry. Ex: registry.digitalocean.com |
| <a name="output_container_registry_storage_usage_bytes"></a> [container\_registry\_storage\_usage\_bytes](#output\_container\_registry\_storage\_usage\_bytes) | The amount of storage used in the registry in bytes |
| <a name="output_container_registry_subscription_tier_slug"></a> [container\_registry\_subscription\_tier\_slug](#output\_container\_registry\_subscription\_tier\_slug) | The slug identifier for the subscription tier |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->