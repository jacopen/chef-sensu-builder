#
# Cookbook Name:: sensu-builder
# Recipe:: client
#

include_recipe "sensu::default"

sensu_client node["sensu_builder"]["name"] do
  address node["sensu_builder"]["ipaddress"]
  subscriptions node["sensu_builder"]["roles"] + ["all"]
end

execute "chmod 644 /etc/sensu/conf.d/client.json" do
  action :run
end

include_recipe "sensu::client_service"

node[:sensu_builder][:plugins].each do |plugin|
  install_plugin plugin[:name] do
    url plugin[:url]
  end
end

service "sensu-client" do
  action :restart
end
