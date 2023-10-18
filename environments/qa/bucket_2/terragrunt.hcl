#include "root" {
#  path = find_in_parent_folders()
#}

dependency "bucket_1" {
  config_path = "../bucket_1"
}