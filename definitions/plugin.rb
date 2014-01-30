define :install_plugin, :url => nil do
  name = params[:name]
  remote_file "/etc/sensu/plugins/#{name}.rb" do
    source params[:url]
    mode 0755
  end
end

define :setup_json do
  name = params[:name]
  template "/etc/sensu/conf.d/#{name}.json" do
    source "#{name}.json.erb"
    owner "sensu"
    group "sensu"
    mode 0755
  end
end
