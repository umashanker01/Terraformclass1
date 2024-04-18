provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "s3"{
   bucket = "shankar"
   key = "terraform.tfstate"
   region = "us-east-1"
   dynamodb_table = "terraform-lock" 
    encrypt        = true 
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-lock" {
   name = "terraform-state-lock-dynamo"
   hash_key = "LockID"
   read_capacity = 20
   write_capacity = 20

   attribute {
      name = "LockID"
      type = "S"
   }

   tags {
     Name = "Terraform Lock Table"
   }
}