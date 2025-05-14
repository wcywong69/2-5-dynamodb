terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"       # fixed - do not change
    key    = "{name}-dynamodb.tfstate" # Specific to you
    region = "ap-southeast-1"          # fixed - do not change
  }
}