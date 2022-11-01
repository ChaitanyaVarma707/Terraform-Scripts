output "ec2instance1" {
  value = aws_instance.project-chaitu1.public_ip
}
output "ec2instance2" {
  value = aws_instance.project-chaitu2.public_ip
}
output "alb_dns_name" {
  value = "${aws_lb.my-aws-alb.dns_name}"
}

output "alb_target_group_arn" {
  value = "${aws_lb_target_group.my-target-group.arn}"
}
