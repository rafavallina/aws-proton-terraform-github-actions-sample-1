/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:987544922694:service/third-bugbash-loadbalanced/service-instance/third-bugbash-instance

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "ServiceUrl" {
  value = "https://${aws_lb.service_lb.dns_name}"
}
