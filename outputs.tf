output "id" {
  description = "Disambiguated ID"
  value       = local.result_id
}

output "name" {
  description = "Normalized name"
  value       = local.result_name
}

output "namespace" {
  description = "Normalized namespace"
  value       = local.result_namespace
}

output "tags" {
  description = "Tag map"
  value       = local.result_tags
}

output "delimiter" {
  description = "Delimiter between `namespace`, `stage`, `name` and `attributes`"
  value       = var.delimiter
}
