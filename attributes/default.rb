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

default['rtorrent']['user'] = 'rtorrent'
default['rtorrent']['user_home'] = '/var/lib/rtorrent'
default['rtorrent']['user_shell'] = '/bin/false'

default['rtorrent']['directory'] = "#{node['rtorrent']['user_home']}/data"

default['rtorrent']['watch']['basedir'] = "#{node['rtorrent']['directory']}/watch"
default['rtorrent']['watch']['dirs'] = %w{ movies tv music unclassified }

default['rtorrent']['config']['session'] = "#{node['rtorrent']['user_home']}/.sessions"
default['rtorrent']['config']['port_range'] = '61000-61999'
default['rtorrent']['config']['min_peers'] = 2
default['rtorrent']['config']['max_peers'] = 50
default['rtorrent']['config']['min_peers_seed'] = '-1'
default['rtorrent']['config']['max_peers_seed'] = '-1'
default['rtorrent']['config']['max_uploads'] = 30
default['rtorrent']['config']['dht'] = 'auto'
default['rtorrent']['config']['peer_exchange'] = 'yes'
default['rtorrent']['config']['scgi_port'] = '127.0.0.1:5000'
default['rtorrent']['config']['encryption'] = 'require,allow_incoming,try_outgoing,enable_retry'
default['rtorrent']['config']['dht'] = 'auto'
default['rtorrent']['config']['peer_exchange'] = 'no'
