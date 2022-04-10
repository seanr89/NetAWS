# Terraform and Docker

Runs a local docker instance with nginx enabled

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
