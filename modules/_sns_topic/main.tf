locals {
  name = "${var.name == "" ? module.name.id : var.name}"
}

module "name" {
  source = "../_name"
}

resource "aws_sns_topic" "main" {
  name = "${local.name}"

  policy = "${var.policy}"
}
  
resource "aws_sns_topic" "main_tom" {
  name = "${local.name}_tom"

  policy = "${var.policy}"
}
