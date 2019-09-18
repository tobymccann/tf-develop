# ####

variable "domain_name" {
  description = "Customer domain name for this project"
  type        = "string"
}

variable "do_droplet_name" {
  description = "Droplet name"
  type        = "string"
}

variable "do_region" {
  description = "Selected region for this project"
  type        = "string"
}

variable "do_nodes" {
  description = "Count of droplet nodes"
}

variable "environment" {}
variable "customer_id" {}
variable "do_project" {}

variable do_tag_role {}


resource "digitalocean_tag" "do_tag_env" {
  name = "admin"
}
