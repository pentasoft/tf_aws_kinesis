variable "stream_name" {
	default = "aws_kinesis_stream_default_name"
}
variable "stream_shard_count" {
	default = 1
}
variable "stream_retention_period" {
	default = 24
}

variable "stream_aws_iam_policy_name" {
	default = "aws_kinesis_stream_policy_default_name"
}
variable "stream_aws_iam_policy_description" {
	default = "AWS IAM policy to grant acces to AWS Kinesis"
}

variable "aws_iam_role_names" {
	type = "list"
}

variable "region" {}
variable "account_id" {}