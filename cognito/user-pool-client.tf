resource "aws_cognito_user_pool_client" "lb-int-client" {
  name                                 = var.user-pool-client-name
  user_pool_id                         = aws_cognito_user_pool.lb-int-cognito.id
  supported_identity_providers         = ["COGNITO"]
  callback_urls                        = var.callback-url
  allowed_oauth_flows                  = ["code", "implicit"]
  allowed_oauth_scopes                 = ["phone", "email", "openid", "profile"]
  generate_secret                      = true
  allowed_oauth_flows_user_pool_client = true
}