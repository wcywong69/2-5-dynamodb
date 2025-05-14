resource "aws_dynamodb_table" "wong-bookinventory" {
  name         = "wong-bookinventory"
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = "ISBN"  # Partition Key, aka Primary Key
  range_key = "Genre" # Sort Key

  attribute {
    name = "ISBN"
    type = "S" # String data type
  }

  attribute {
    name = "Genre"
    type = "S" # String data type
  }

  tags = {
    Name = "wong-bookinventory-name"
  }
}