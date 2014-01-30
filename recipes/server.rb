#
# Cookbook Name:: sensu-builder
# Recipe:: server
#

include_recipe "sensu::default"
include_recipe "sensu::rabbitmq"
include_recipe "sensu::redis"
include_recipe "sensu::api_service"
include_recipe "sensu::dashboard_service"
include_recipe "sensu::server_service"

%w(check-procs check-disk check-cpu check-ram load-metrics vmstat-metrics).each do |json|
  setup_json json
end

service "sensu-server" do
  action :restart
end
