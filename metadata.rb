name             'sensu_builder'
maintainer       'Kazuto Kusama'
maintainer_email 'jacopen@gmail.com'
license          'All rights reserved'
description      'Installs/Configures sensu-client'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "sensu"

recipe "client", "setup client"
recipe "server", "setup server"

