#
# Cookbook Name:: system
# Recipe:: default
#
# Author:: John Ko <git@johnko.ca>
# Copyright 2014, John Ko
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node[:virtualization][:system] == "jail"
if node[:virtualization][:role] == "host"
  template "/boot/loader.conf" do
    source "loader.erb"
    owner 'root'
    group node['system']['rootgroup']
    mode 0644
  end
  template "/etc/sysctl.conf" do
    source "sysctl.erb"
    owner 'root'
    group node['system']['rootgroup']
    mode 0644
  end
end
end

template "/etc/periodic.conf" do
  source "periodic.erb"
    owner 'root'
    group node['system']['rootgroup']
  mode 0644
end

