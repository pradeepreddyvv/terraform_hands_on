resource "local_file" "tf_example1" {
  filename = "C:\\Users\\Pradeep Reddy\\Documents\\terraform_hands_on\\01_basics\\example1.txt"
  content = "Pradeep is a good engineer"
}

resource "local_sensitive_file" "tf_example2" {
  content = "this is sensitive info"
  filename = "${path.module}/example2.txt"
}
#write tf -> plan
