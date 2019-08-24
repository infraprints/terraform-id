# Sample Usage

Describes a common usage scenario for this module. This shows a pre-naming convention way of labelling terraform resources.

This includes:

* Tags to describe properties of the resource
* Indicates that the resource was created with Terraform
* Indicates what mechanism was used to execute Terraform
* Namespacing of resources

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
