output "user_pool_arn" {
  value = aws_cognito_user_pool.lb-int-cognito.arn
}

output "user_pool_client_id" {
  value = aws_cognito_user_pool_client.lb-int-client.id
}

output "user_pool_domain" {
  value = aws_cognito_user_pool_domain.main.domain
}