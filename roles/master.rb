name "master"
description "master role"

run_list [
  "recipe[monitor::master]"
]

override_attributes(
  :monitor => {
    :master_address => '127.0.0.1'
  }
)
