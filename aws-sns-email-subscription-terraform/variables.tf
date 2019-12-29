variable "sns_subscription_email_address_list" {
  type = list(string)
  description = "List of email addresses"
}

variable "sns_subscription_protocol" {
  type = string
  default = "email"
  description = "SNS subscription protocal"
}