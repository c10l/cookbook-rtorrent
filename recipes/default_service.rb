#     Copyright 2015 Cassiano Leal
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

#
# Cookbook Name:: rtorrent
# Recipe:: default_service
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

template "/etc/init.d/rtorrent" do
  action :create
  owner "root"
  group "root"
  mode "0755"
  source "init_sysv.erb"
  notifies :restart, "service[rtorrent]"
end

service "rtorrent" do
  action [ :enable, :start ]
  provider Chef::Provider::Service::Init::Debian
end
