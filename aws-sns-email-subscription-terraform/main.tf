provider "aws" {
  region = "us-east-1"
}

data "template_file" "aws_cf_sns_stack" {
  template = file("${path.module}/templates/cf_aws_sns_email_stack.json.tpl")
  vars = {
    sns_topic_name        = ""
    sns_display_name      = ""
    sns_subscription_list = join(",", formatlist("{\"Endpoint\": \"%s\",\"Protocol\": \"%s\"}", var.sns_subscription_email_address_list, var.sns_subscription_protocol))
  }
}

resource "aws_cloudformation_stack" "tf_sns_topic" {
  name = "snsStack"
  template_body = data.template_file.aws_cf_sns_stack.rendered
  tags = {
    name = "snsStack"
  }
}