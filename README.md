# NetAWS

Repo to test out dotnet app creation and deployment to AWS using Terraform
This will include:

1. Dotnet API
2. Docker
3. Terraform
4. DB??

## AWS Terraform
follow this (link)[https://blog.gruntwork.io/a-comprehensive-guide-to-authenticating-to-aws-on-the-command-line-63656a686799]on how to setup AWS cli

## AWS EC2 and .Net

Follow this (Link)[https://nodogmablog.bryanhogan.net/2021/12/how-to-run-net-6-kestrel-and-web-api-on-an-aws-ec2-linux-instance/] to see how to setup an ec2 instance for dotnet

### Useful Links

(Instal)[https://docs.servicestack.net/deploy-netcore-to-amazon-linux-2-ami#setup-the-deploy-user-account]

## RDS and Postgres

Some steps are needed for postgres creation and access!

1. Local Dev requires modifications to the security group for local IP access
    - N.B. a new security group will probably need to be made!
    - useful [link](https://www.freecodecamp.org/news/cjn-how-to-connect-your-aws-rds-microsoft-sql-server-using-azure-data-studio/)
