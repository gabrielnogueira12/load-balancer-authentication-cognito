variable "region" {
  type = string
}

variable "user-pool-name" {
  type = string
}

variable "user-pool-client-name" {
  type = string
}

variable "domain" {
  type = string
}

variable "elb_name" {
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