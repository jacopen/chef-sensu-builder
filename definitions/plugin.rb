define :install_plugin, :url => nil do
  name = params[:name]
  remote_file "/etc/sensu/plugins/#{name}.rb" do
    source params[:url]
    mode 0755
  end
end
