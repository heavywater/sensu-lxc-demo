name "sensu_lxc"
description "minimal cookbook, sets up sensu demo in lxc containers"
license "Apache v2.0"
maintainer "Sean Escriva"
maintainer_email "sean@hw-ops.com"
version "0.0.1"

supports "ubuntu"

depends "lxc"
depends "bridger"
depends "apt"
depends "ruby_installer"
depends "sensu"
depends "monitor"
