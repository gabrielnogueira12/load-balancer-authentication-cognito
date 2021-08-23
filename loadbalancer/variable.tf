variable "elb_name" {
  type = string
}

variable "user_pool_arn" {
  type = string
}

variable "user_pool_client_id" {
  type = string
}

variable "user_pool_domain" {
  type = string
}

variable "arn_certificate" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "securitygroup" {
  type = list(string)
}

variable "subnets" {
  type = list(string) 
}

variable "tg-name" {
  type = string
}