terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

resource "local_file" "exmaple1" {
  content  = "foo!"
  filename = "${path.module}/${var.filename_1}.txt"
  count = var.count_num
}

locals {
    base_path = "${path.module}/files"
}
resource "local_file" "exmaple2" {
  content  = "foo!"
  filename = "${local.base_path}/${var.filename_2}.md"
}
resource "local_file" "exmaple3" {
  content  = "foo!"
  filename = "${local.base_path}/${var.filename_3}.md"
}
resource "local_file" "exmaple4" {
  content  = "foo!"
  filename = "${local.base_path}/example4.demo"
}