resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S" # S = string, N = number, B = binary
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled = true # AWS-owned key by default; swap in a KMS CMK later if needed
  }

  tags = {
    Name = var.table_name
  }
}

