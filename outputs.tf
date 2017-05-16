output "aws_kinesis_stream_arn" {
  value = "${aws_kinesis_stream.stream.arn}"
}

output "aws_kinesis_stream_policy_arn" {
  value = "${aws_iam_policy.policy.arn}"
}