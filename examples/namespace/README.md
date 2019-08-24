# Example

Describes a label that exists within a nested namespace. This can work in cases where you might have multiple resources as leaves of the namespace node.

```hcl
locals {
    namespace = ["Infraprints", "PROTO", "System", "Access", "Requests"]
}

module "sqs_name" {
  namespaces = ../../

  namespaces = local.namespace
  name       = "primary"
}

module "sqs_dlq_name" {
  namespaces = ../../

  namespaces = local.namespace
  name       = "dlq"
}
```

## Usage

To run this example you need to execute:

```bash
terraform init
terraform plan
terraform apply
```

## Notes

* The `name` module is not good fit for modelling naming conventions
* When working with naming conventions. I recommend the `label` module
