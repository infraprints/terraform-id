module "key_label" {
  source = "git::https://gitlab.com/infraprints/modules/tf/name"

  namespaces = ["Infraprints", "PROTO"]
  names      = ["ACME", "Key", "Storage"]
  delimiter  = "/"

  tags = {
    CreatedFrom = "GitLabCI"
    CreatedWith = "Terraform"
    ManagedBy   = "Terraform"
  }
}

output "id" {
  value = module.key_label.id
}

output "name" {
  value = module.key_label.name
}

output "namespace" {
  value = module.key_label.namespace
}

output "tags" {
  value = module.key_label.tags
}
