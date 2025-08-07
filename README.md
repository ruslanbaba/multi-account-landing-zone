# Multi-Account Terraform Landing Zone

This project provisions a scalable AWS Landing Zone for 40+ accounts using Control Tower, Service Catalog, SCPs, and automated OU/account provisioning.

## Structure
- `terraform/` — Backend, main config, variables, outputs
- `lambda/` — Lambda for OU provisioning
- `step-functions/` — State Machine for automation
- `service-catalog/` — Account vending portfolio
- `scp/` — Service Control Policies enforcing encryption/backup
- `modules/account/` — Module for account creation and SCP attachment

## Steps
1. **Bootstrap Terraform backend**
2. **Deploy Control Tower**
3. **Automate OU provisioning (Lambda + Step Functions)**
4. **Create Service Catalog portfolio for account vending**
5. **Enforce SCPs for encryption/backup**
6. **Provision accounts using modules**
7. **Automate everything via Step Functions and Lambda**
8. **Validate and monitor**

## Usage
- Edit variables in `terraform/variables.tf` for your accounts
- Deploy with `terraform init && terraform apply`
- Lambda and Step Functions automate OU/account creation
- SCPs are attached to enforce security policies

---
All steps are covered for a secure, automated, multi-account AWS Landing Zone.
# multi-account-landing-zone