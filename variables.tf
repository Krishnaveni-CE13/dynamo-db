variable "table_name" {
  description = "Name of the DynamoDB table."
  type        = string
  default     = "example-table"
}

variable "hash_key" {
  description = "Hash key attribute name for the DynamoDB table."
  type        = string
  default     = "pk"
}
