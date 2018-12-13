variable "car" {
  type = "list"

  default = [
    "opel",
    "citroen",
    "skoda",
    "VW",
    "toyota",
  ]
}

module "mobile" {
  source = "module/"
  car    = "${var.car}"
}

output "brands" {
  value = "${module.mobile.car}"
}
