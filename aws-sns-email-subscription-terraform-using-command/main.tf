provider "aws" {
  region = var.region
}

resource "aws_sns_topic" "tf_aws_sns_topic_with_subscription" {
  name = var.sns_topic_name
  provisioner "local-exec" {
    command = "sh sns_subscription.sh"
    environment = {
      sns_arn = self.arn
      sns_emails = var.sns_subscription_email_address_list
    }
  }
}
