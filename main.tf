variable "random_lenght" {
  type    = list(string)
  default = [1, 2, 3, 4, 5]
}

resource "random_id" "test" {

  for_each = toset(var.random_lenght)

  byte_length = each.value
}
