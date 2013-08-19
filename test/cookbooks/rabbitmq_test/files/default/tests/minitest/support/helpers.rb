#
# Copyright 2012-2013, Opscode, Inc.
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

module Helpers
  module RabbitMQ
    require 'chef/mixin/shell_out'
    include Chef::Mixin::ShellOut
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def plugin_enabled?(plugin_name)
      plugin_list = shell_out("rabbitmq-plugins list -e '#{plugin_name}'")
      plugin_list.stdout =~ /(\[[Ee]\]\s#{plugin_name})/
    end

    def policy_enabled?(plugin_name)
    end

    def user_enabled?(plugin_name)
    end

    def vhost_enabled?(plugin_name)
    end

  end
end
