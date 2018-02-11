name 'statsd'
maintainer 'Michael Burns'
maintainer_email 'michael@mirwin.net'
license 'Apache-2.0'
description 'Installs/Configures statsd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.3'
chef_version '>= 12.10' if respond_to?(:chef_version)

depends 'build-essential'
depends 'git'
depends 'nodejs'

supports 'debian'
supports 'ubuntu', '>= 12.04'
supports 'redhat'

recipe 'statsd::default', 'Writes configuration file'
recipe 'statsd::debian', 'Builds and installs dpkg (ubuntu, debian)'
recipe 'statsd::rhel', 'Builds and installs rpm (Redhat, Centos, Fedora)'
recipe 'statsd::service', 'Configures init and service'

source_url 'https://github.com/mburns/statsd' if respond_to?(:source_url)
issues_url 'https://github.com/mburns/statsd/issues' if respond_to?(:issues_url)
