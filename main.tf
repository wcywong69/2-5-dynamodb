resource "aws_dynamodb_table" "wong_another_bookinventory" {
  name         = "another-wong-bookinventory"
  billing_mode = "PAY_PER_REQUEST"
  #   read_capacity  = 10
  #   write_capacity = 5

  hash_key = "ISBN"   # Partition Key, aka Primary Key
  range_key = "Genre"   # Sort Key
  
  attribute {
    name = "ISBN"
    type = "S" # String data type
  }

  attribute {
    name = "Genre"
    type = "S" # String data type
  }
  
#   attribute {
#     name = "Title"
#     type = "S" # String data type
#   }
  
#   attribute {
#     name = "Author"
#     type = "S" # String data type
#   }
  
#   attribute {
#     name = "Stock"
#     type = "N" # String data type
#   }

  tags = {
    Name = "another-wong-bookinventory"
  }
}

# resource "aws_dynamodb_table_item" "item" {
#     table_name = aws_dynamodb_table.wong_another_bookinventory.name
#     hash_key   = aws_dynamodb_table.wong_another_bookinventory.hash_key
    # item = [{
    #         "ISBN": {"S": "978-0134685991"},
    #         "Genre": {"S": "Technology"},
    #         "Title": {"S": "Effective Java"},
    #         "Author": {"S": "Joshua Bloch"},
    #         "Stock": {"N": "1"}
    #     },
    #     {
    #         "ISBN": {"S": "978-0134685009"},
    #         "Genre": {"S": "Technology"},
    #         "Title": {"S": "Learning Python"},
    #         "Author": {"S": "Mark Lutz"},
    #         "Stock": {"N": "2"}
    #     },
    #     {
    #         "ISBN": {"S": "974-0134789698"},
    #         "Genre": {"S": "Fiction"},
    #         "Title": {"S": "The Hitchhiker"},
    #         "Author": {"S": "Douglas Adams"},
    #         "Stock": {"N": "10"}
    #     },  
    #     {
    #         "ISBN": {"S": "982-01346653457"},
    #         "Genre": {"S": "Fiction"},
    #         "Title": {"S": "Dune"},
    #         "Author": {"S": "Frank Herbert"},
    #         "Stock": {"N": "8"}
    #     },
    #     {
    #         "ISBN": {"S": "978-01346854325"},
    #         "Genre": {"S": "Technology"},
    #         "Title": {"S": "System Design"},
    #         "Author": {"S": "Mark Lutz"}   
    #     }
    # ]

    # }