{
 "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "SNSTopic": {
      "Type": "AWS::SNS::Topic",
      "Properties": {
        "TopicName": "test-sns-email-sub",
        "DisplayName": "SNS_EMAIL-SUB",
        "Subscription": [
          ${sns_subscription_list}
        ]
      }
    }
  }
}