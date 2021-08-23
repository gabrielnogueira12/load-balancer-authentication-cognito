## Terraform Script to use Cognito's Authentication with Load Balancer in AWS

This script was made to create a **Load Balancer and its listeners in EC2**, 
**User Pool and User Pool App Client in Cognito**, and configure this resources
to use Cognito's Authentication to a Load Balancer.

The actions utilized to configure the Load Balancer's Listeners was Cognito's
Authentication and a Foward Action as the followed action, but you can configure
another actions and add new ones. 