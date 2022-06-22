resource "aws_kinesis_stream" "lmu_stream" {
  name             = "lmu_stream"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  tags = {
    Name        = "lmu-data-stream"
  }
}


resource "aws_kinesis_stream_consumer" "lmu_stream_consumer" {
  name       = "lmu_stream_consumer"
  stream_arn = aws_kinesis_stream.lmu_stream.arn
}