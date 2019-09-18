terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}

variable "do_token" {
}

variable "pub_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "pvt_key" {
  default = "~/.ssh/id_rsa"
}

variable "ssh_id" {
  default = "25265043"
}

variable "ssh_user" {
  default = "root"
}

provider "digitalocean" {
  token = var.do_token
}

module "do_admin" {
    source = "https://github.com/tobymccann/terraform-do-droplet"
    pvt_key = var.pvt_key
    ssh_id = var.ssh_id
    ssh_user = var.ssh_user
    do_tag_env = digitalocean_tag.env.id
    do_tag_role = var.do_tag_role
    do_droplet_name = var.do_droplet_name
    domain_name = var.domain_name
    do_nodes = var.do_nodes
    do_region = var.do_region
    customer_id = var.customer_id
    project = var.do_project
}
