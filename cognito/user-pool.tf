resource "aws_cognito_user_pool" "lb-int-cognito" {
  name = var.user-pool-name
}