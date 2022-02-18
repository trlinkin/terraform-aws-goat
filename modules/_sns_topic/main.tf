locals {
  name = "${var.name == "" ? module.name.id : var.name}"
}

module "name" {
  source = "../_name"
}

resource "aws_sns_topic" "main" {
  name = "${local.name}"

  policy = "${var.policy}"
  tags = {
    Name = "Ferd Farkle"
  }
}

  resource "aws_sns_topic" "main_2" {
  name = "${local.name}_2"

  policy = "${var.policy}_2"
}
