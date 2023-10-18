#resource "aws_s3_bucket" "example" {
#  bucket = var.name
#
#  tags = {
#    Name        = var.name
#    Environment = "Dev"
#  }
#}

# This resource will destroy (potentially immediately) after null_resource.next
resource "null_resource" "previous" {}

resource "time_sleep" "this" {
  depends_on = [null_resource.previous]

  create_duration = "20s"
}

# This resource will create (at least) 30 seconds after null_resource.previous
resource "null_resource" "next" {
  depends_on = [time_sleep.this]
}