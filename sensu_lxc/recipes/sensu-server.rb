#
# Cookbook Name:: sensu_lxc
# Recipe:: server
#
# Copyright 2011, Heavy Water Ops, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

lxc_container "sensu-server" do
  action :create
  default_bridge 'br0'
  chef_enabled true
  run_list [ 'role[sensu]' ]
  node_name 'sensu-server.lxc.hw-ops.local'
  validation_client 'chef-validator'
  validation_pem File.read( '/etc/chef-server/chef-validator.pem' )
  server_uri 'https:://sensu-lxc-host'
end

lxc_service 'sensu-server' do
  action :start
end
