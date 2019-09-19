# ####

variable "domain_name" {
  description = "Customer domain name for this project"
  type        = "string"
}

variable "do_record_ttl" {
  description = "DNS A Record TTL"
  type        = "number"
}

variable "do_droplet_name" {
  description = "Droplet name"
  type        = "string"
}

variable "do_droplet_size" {
  description = "Map of Droplet sizes"
  type = "string"
}

variable "do_region" {
  description = "Selected region for this project"
  type        = "string"
}

variable "do_nodes" {
  description = "Count of droplet nodes"
}

variable "customer_id" {}
variable "do_project" {}

variable do_tag_role {}
variable do_tag_env {}
