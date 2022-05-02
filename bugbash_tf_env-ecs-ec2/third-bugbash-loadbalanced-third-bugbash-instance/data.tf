/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:987544922694:service/third-bugbash-loadbalanced/service-instance/third-bugbash-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "aws_iam_policy_document" "ecs_task_execution_role_policy_document" {
  statement {
    actions   = ["sns:Publish"]
    resources = [var.environment.outputs.SnsTopicArn]
  }
}

