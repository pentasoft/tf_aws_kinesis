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

   - Required fields:
      + region
      + account_id

   - Optional fields have default values. You can find them at `variables.tf`file. 

   - Get the module running command at terminal:
      
      `terraform get -update=true`

- - -
