variable "name" {}
variable "email" {}
variable "ou" {}
variable "scp_names" { type = list(string) }

resource "aws_controltower_account" "this" {
  account_name = var.name
  email        = var.email
  organizational_unit_name = var.ou
}

resource "aws_organizations_policy_attachment" "scp" {
  for_each = toset(var.scp_names)
  policy_id = each.value
  target_id = aws_controltower_account.this.id
}
