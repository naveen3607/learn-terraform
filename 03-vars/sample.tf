#Plain Variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

#List Variable
variable "fruits" {
  default = [ "apple", "mango", "banana" ]
}

output "fruits" {
  value = var.fruits
}

#Map Variable, Plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

output "fruit_stock" {
  value = var.fruit_stock
}

#Map Variable, Map of Maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 5
    }
    banana = {
      stock = 200
      price = 1.5
    }
  }
}

output "fruit_stock_with_price" {
  value = var.fruit_stock_with_price
}