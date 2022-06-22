### Roles

resource "aws_iam_role" "firehose_role" {
  name = "firehose_test_role"

   assume_role_policy = file("${path.module}/files/assumes/assume_role_firehose.json")
 }

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = file("${path.module}/files/assumes/assume_role_lambda.json")
}


### Policies
resource "aws_iam_policy" "lmu_consumer_lambda_kinesis_policy" {
  name        = "lmu_consumer_lambda_kinesis_policy"
  description = "A policy for lambda lmu consumer to access Kinesis services"

  policy = templatefile("${path.module}/files/policies/lambda_lmu_consumer_policy.json", {kinesis_stream_name: aws_kinesis_stream.lmu_stream.name})
}

resource "aws_iam_role_policy_attachment" "lmu_consumer_lambda_kinesis_policy_attach" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = aws_iam_policy.lmu_consumer_lambda_kinesis_policy.arn
}