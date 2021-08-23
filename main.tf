terraform {
  required_version = "1.0.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.54.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "elb-module" {
  source              = "./loadbalancer"
  user_pool_arn       = module.cognito-module.user_pool_arn    
  user_pool_client_id = module.cognito-module.user_pool_client_id
  user_pool_domain    = module.cognito-module.user_pool_domain
  vpc_id              = var.vpc_id
  tg-name             = var.tg-name
  subnets             = var.subnets
  securitygroup       = var.securitygroup
  elb_name            = var.elb_name
  arn_certificate     = var.arn_certificate
}


module "cognito-module" {
  source                = "./cognito"
  callback-url          = [ "https://${module.elb-module.lb-dns-name}/oauth2/idpresponse" ]
  domain                = var.domain
  user-pool-name        = var.user-pool-name
  user-pool-client-name = var.user-pool-client-name
}
