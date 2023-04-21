<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_folder.folders](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder_iam_policy.folders](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder_iam_policy) | resource |
| [google_iam_policy.folders](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folders"></a> [folders](#input\_folders) | Map of folder names => principals => roles. | `map(map(list(string)))` | n/a | yes |
| <a name="input_parent"></a> [parent](#input\_parent) | Parent Name (ex. organizations/123456789 or folders/123456789) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_folders"></a> [folders](#output\_folders) | Folder Resources Map |
<!-- END_TF_DOCS -->
