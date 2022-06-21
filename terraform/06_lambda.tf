resource "aws_lambda_function" "lambda_lmu_consumer_path" {
  filename      = local.lambda_lmu_consumer_path
  function_name = "lambda_lmu_consumer"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.test"

  source_code_hash = filebase64sha256(local.lambda_lmu_consumer_path)

  runtime = "python3.8"
}