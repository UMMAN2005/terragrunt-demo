include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "${find_in_parent_folders("catalog/modules")}//s3"
}

inputs = {
  name = "best-cat-2025-11-17-0038-dev"

  force_destroy = true
}