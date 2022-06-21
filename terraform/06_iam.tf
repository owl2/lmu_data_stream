resource "aws_iam_role" "firehose_role" {
  name = "firehose_test_role"

   assume_role_policy = file("${path.module}/files/assumes/assume_role_firehose.json")
 }

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = file("${path.module}/files/assumes/assume_role_lambda.json")
}

