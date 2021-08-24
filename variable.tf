variable "region" {
  description = "The region to create the resources"
  type = string
}

variable "user-pool-name" {
  description = "Name of the user pool"
  type = string
}

variable "user-pool-client-name" {
  description = "Name of the user pool client"
  type = string
}

variable "domain" {
  description = "Cognito's domain"
  type = string
}

variable "elb_name" {
  description = "Load balancer name"
  type = string
}

variable "arn_certificate" {
  description = "The ARN of SSL certificate"
  type = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the resources will be"
  type = string
}

variable "securitygroup" {
  description = "The ID of the Security Groups"
  type = list(string)
}

variable "subnets" {
  description = "The subnets ID for the Load Balancer"
  type = list(string) 
}

variable "tg-name" {
  description = "The name of the Load Balancer's Target Group"
  type = string
}