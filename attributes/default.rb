default[:sensu_builder][:plugins] = [
                                      {name: "check-procs", url: "https://raw.github.com/sensu/sensu-community-plugins/master/plugins/processes/check-procs.rb"},
                                      {name: "check-disk", url: "https://github.com/sensu/sensu-community-plugins/raw/master/plugins/system/check-disk.rb"},
                                      {name: "check-cpu", url: "https://github.com/sensu/sensu-community-plugins/raw/master/plugins/system/check-cpu.rb"},
                                      {name: "check-ram", url: "https://github.com/sensu/sensu-community-plugins/raw/master/plugins/system/check-ram.rb"},
                                      {name: "load-metrics", url: "https://raw.github.com/sensu/sensu-community-plugins/master/plugins/system/load-metrics.rb"},
                                      {name: "vmstat-metrics", url: "https://github.com/sensu/sensu-community-plugins/raw/master/plugins/system/vmstat-metrics.rb"},
                                    ]

default["sensu"]["use_ssl"] = false
default["sensu"]["use_embedded_ruby"] = true 
default["sensu"]["rabbitmq"]["host"] = "localhost"
default["sensu"]["rabbitmq"]["port"] = 5672
default["sensu"]["rabbitmq"]["user"] = "admin"
default["sensu"]["rabbitmq"]["password"] = "password"

default["sensu_builder"]["name"] = "server01"
default["sensu_builder"]["ipaddress"] = "127.0.0.1"
default["sensu_builder"]["roles"] = ["server"]
