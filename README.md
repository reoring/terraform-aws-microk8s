# MicroK8s on AWS by Terraform

This repository support deploying MicroK8s environment on AWS by terraform.

## Build image that included microk8s

```
make build
```

## Generate terraform.tfvars

```
make generate-tfvars
```

## Deploy microk8s instance on AWS

```
make deploy
```

## Deploy sample kubernets app

```
make deploy-sample
```

## Open sample app

```
make open-sample-url
```
