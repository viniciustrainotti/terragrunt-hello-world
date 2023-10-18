include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../..//bucket_1"
}