# Creating load balancer
resource "aws_lb" "myLB" {
  name               = var.elb_name
  load_balancer_type = "application"
  security_groups    = var.securitygroup
  subnets            = var.subnets
  internal           = false
  ip_address_type    = "ipv4"
}

# Creating target group
resource "aws_lb_target_group" "tg01" {
  name     = var.tg-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}
