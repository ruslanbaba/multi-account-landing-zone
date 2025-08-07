variable "account_list" {
  type = list(object({
    name  = string
    email = string
    ou    = string
  }))
}
