variable "namespace" {
  type        = string
  description = ""
  default     = ""
}

variable "namespaces" {
  type        = list
  description = ""
  default     = []
}

variable "name" {
  type        = string
  description = ""
  default     = ""
}

variable "names" {
  type        = list
  description = ""
  default     = []
}

variable "delimiter" {
  type        = string
  description = ""
  default     = "-"
}


variable "tags" {
  type        = map
  description = ""
  default     = {}
}
