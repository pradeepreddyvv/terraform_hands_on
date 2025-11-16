terraform {
  backend "local" {
    path = "C:\\Users\\Pradeep Reddy\\Documents\\terraform_hands_on\\state-file\\terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}