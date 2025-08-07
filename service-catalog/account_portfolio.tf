resource "aws_servicecatalog_portfolio" "account_vending" {
  name          = "Account Vending Portfolio"
  description   = "Portfolio for new AWS accounts"
  provider_name = "Control Tower"
}
