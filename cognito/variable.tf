variable "user-pool-name" {
  type = string
}

variable "user-pool-client-name" {
  type = string
}

variable "domain" {
  type = string
}

variable "callback-url" {
  type = list(string)
}