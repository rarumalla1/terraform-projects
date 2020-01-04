variable "region" {
  type = string
  default = "us-east-1"
  description = "aws region"
}

variable "sns_topic_name" {
  type = string
  description = "sns topic name"
}

variable "sns_subscription_email_address_list" {
  type = string
  description = "List of email addresses as string(space separated)"
}