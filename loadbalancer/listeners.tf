resource "aws_lb_listener" "listener80" {
    load_balancer_arn = aws_lb.myLB.arn
    port              = "80"
    protocol          = "HTTP"
    
    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.tg01.arn
    }
}

resource "aws_lb_listener" "listener443" {
    load_balancer_arn = aws_lb.myLB.arn
    port              = "443"
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    certificate_arn   = var.arn_certificate
    default_action {
        type = "authenticate-cognito"

        authenticate_cognito {
            user_pool_arn       = var.user_pool_arn
            user_pool_client_id = var.user_pool_client_id
            user_pool_domain    = var.user_pool_domain
        }
    }

    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.tg01.arn
    }
}