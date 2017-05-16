# Terraform module to automate AWS Kinesis creation

A Terraform module for creating AWS Kinesis stream and attach to AWS IAM role given a policy to grant access to the stream.

- - -

### Resources to create

   - AWS Kinesis stream.
   - AWS IAM policy.
   - Attach AWS IAM policy created to AWS IAM role provided.

- - -

### Project files

   - _main.tf_: Configuration file.
   - _outputs.tf_: Variables returned when module is executed.
   - _variables.tf_: Variables parameter to start using the module.

- - -

### Using this module in a Terraform project

   - Include module in the project like: 
      
      ```hcl
      module "kinesis-test" {
         source = "github.com/pentasoft/tf_aws_kinesis"   
         
         stream_name = "${var.stream_name}"
         stream_shard_count = "${var.stream_shard_count}"
         stream_retention_period = "${var.stream_retention_period}"
         stream_aws_iam_policy_name = "${var.stream_aws_iam_policy_name}"
         stream_aws_iam_policy_description = "${var.stream_aws_iam_policy_description}"
         
         aws_iam_role_names = ["${var.aws_iam_role_name1}","${var.aws_iam_role_name2}",]
         
         region = "${var.region}"
         account_id = "${var.account_id}"
      }
      ```

   - Required fields:
      + region
      + account_id

   - Optional fields have default values. You can find them at `variables.tf`file. 

   - Get the module running command at terminal:
      
      `terraform get -update=true`

- - -
