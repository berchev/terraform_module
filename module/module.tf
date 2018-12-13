variable "car" {
  type = "list"
}

resource "null_resource" "brands" {
  count = "${length(var.car)}"

  triggers {
    build_number = "${var.car[count.index]}"
  }

  provisioner "local-exec" {
    command = "echo car brand - ${var.car[count.index]}"
  }
}

output "car" {
  value = "${join(", ", null_resource.brands.*.triggers.build_number)}"
}
