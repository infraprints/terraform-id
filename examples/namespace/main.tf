module "example" {
  source = "../../"

  namespaces = ["Infraprints", "PROTO", "System", "Access", "Requests"]
  name       = "DLQ"

  tags = {
    ManagedBy = "Terraform"
  }
}

##
## Output

output "id" {
  value = module.example.id
}

output "name" {
  value = module.example.name
}

output "namespace" {
  value = module.example.namespace
}

output "delimiter" {
  value = module.example.delimiter
}

output "tags" {
  value = module.example.tags
}