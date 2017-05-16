terraform {
    required_version = "> 0.8.0"
}

resource "aws_kinesis_stream" "stream" {
    name = "${var.stream_name}"
    shard_count = "${var.stream_shard_count}"
    retention_period = "${var.stream_retention_period}"
}

resource "aws_iam_policy" "policy" {
    name = "${var.stream_aws_iam_policy_name}"
    description = "${var.stream_aws_iam_policy_description}"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Effect": "Allow",
        "Action": "kinesis:ListStreams",
        "Resource": "arn:aws:kinesis:${var.region}:${var.account_id}:stream/*"
    },
    {
        "Effect": "Allow",
        "Action": [
            "kinesis:DescribeStream",
            "kinesis:GetRecords",
            "kinesis:GetShardIterator",
            "kinesis:PutRecords"
        ],
        "Resource": "${aws_kinesis_stream.stream.arn}"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "attach-policy" {
    name = "${aws_iam_policy.policy.name}kinesis-stream-attachment"
    roles = ["${var.aws_iam_role_names}"]
    policy_arn = "${aws_iam_policy.policy.arn}"
}