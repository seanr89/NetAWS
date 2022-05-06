# Terraform and Docker

Runs a local docker instance with nginx enabled

## Pre-requisites
The Terraform CLI (0.14.9+) installed.
The AWS CLI installed.
AWS account and associated credentials that allow you to create resources.

## Commands

run these in order

Initialise the terraform process to interact with docker

```
terraform init
```

followed by to provision

```
terraform apply
```

navigate to [localhost:8000](http://localhost:8000) or run `docker ps`

### Extra Commands

Command automatically updates configurations in the current directory for readability and consistency.

```
terraform fmt
```

You can also make sure your configuration is syntactically valid

```
terraform validate
```

to destroy/pull do a terraformed instance!

```
terraform apply -destroy
```
