# payment-api - Application Storage

This repository was generated through the **CloudOps Backstage IDP**.

## Resource

Amazon S3 application storage.

## Configuration

| Setting | Value |
|---|---|
| Application | `payment-api` |
| Environment | `dev` |
| Owner | `payment-spoke` |
| AWS Region | `us-east-1` |

## CloudOps Guardrails

The Golden Path automatically applies:

- Public access blocking
- Standard resource tagging
- Terraform-managed infrastructure
- Application ownership metadata
- Environment metadata
- Standard AWS provider configuration

## Terraform

Initialize:

```bash
cd terraform
terraform init
