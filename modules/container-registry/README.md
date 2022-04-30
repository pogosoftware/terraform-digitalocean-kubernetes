# Module: digitalocean_container_registry

Provides a DigitalOcean Container Registry resource. A Container Registry is a secure, private location to store your containers for rapid deployment.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.19 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_container_registry.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically | `string` | `null` | no |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | The name of the container\_registry | `string` | n/a | yes |
| <a name="input_registry_subscription_tier_slug"></a> [registry\_subscription\_tier\_slug](#input\_registry\_subscription\_tier\_slug) | The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`) | `string` | `"starter"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_region"></a> [region](#output\_region) | The slug identifier for the region |
| <a name="output_registry_endpoint"></a> [registry\_endpoint](#output\_registry\_endpoint) | The URL endpoint of the container registry. Ex: registry.digitalocean.com/my\_registry |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | The id of the container registry |
| <a name="output_registry_name"></a> [registry\_name](#output\_registry\_name) | The name of the container registry |
| <a name="output_registry_server_url"></a> [registry\_server\_url](#output\_registry\_server\_url) | The domain of the container registry. Ex: registry.digitalocean.com |
| <a name="output_registry_storage_usage_bytes"></a> [registry\_storage\_usage\_bytes](#output\_registry\_storage\_usage\_bytes) | The amount of storage used in the registry in bytes |
| <a name="output_registry_subscription_tier_slug"></a> [registry\_subscription\_tier\_slug](#output\_registry\_subscription\_tier\_slug) | The slug identifier for the subscription tier |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->