#include "root" {
#  path = find_in_parent_folders()
#}

terraform {
  source = "../../..//bucket_2"
}

dependency "bucket_1" {
  config_path = "../bucket_1"
}
