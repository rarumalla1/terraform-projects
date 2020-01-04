output "sns_topic_arn" {
  value = join("", aws_sns_topic.tf_aws_sns_topic_with_subscription.*.arn)
}