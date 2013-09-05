#
# Cookbook Name:: rabbitmq
# Recipe:: check_failed_messages_queue
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

cron "check_failed_messages_queue" do
  minute '00'
  command "/tmp/check_failed_messages_queue.bash"
end

template "/tmp/check_failed_messages_queue.bash" do
  source 'check_failed_messages_queue.bash.erb'
  owner 'root'
  group 'root'
  mode 00700
end
