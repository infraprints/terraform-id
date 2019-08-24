locals {
  compact_names      = compact(var.names)
  compact_namespaces = compact(var.namespaces)
}

locals {
  is_singular_name      = length(local.compact_names) == 0
  is_singular_namespace = length(local.compact_namespaces) == 0
}

locals {
  name       = "${lower(format("%v", var.name))}"
  names      = "${lower(format("%v", join(var.delimiter, compact(local.compact_names))))}"
  namespace  = "${lower(format("%v", var.namespace))}"
  namespaces = "${lower(format("%v", join(var.delimiter, compact(local.compact_namespaces))))}"

  tags = {
    Namespace = local.result_name
    Name      = local.result_namespace
  }
}

locals {
  result_name      = local.is_singular_name ? local.name : local.names
  result_namespace = local.is_singular_namespace ? local.namespace : local.namespaces
  result_id        = join(var.delimiter, list(local.result_namespace), list(local.result_name))
  result_tags      = merge(local.tags, var.tags)
}

