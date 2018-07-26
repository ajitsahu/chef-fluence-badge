#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# Install apache
if node[ 'platform_family' ] == "rhel"
  package = "httpd"
elsif node[ 'platform_family' ] == "debian"
  package = "apche2"
end

package 'apache' do
  package_name package
  action :install
end

service 'apache' do
  service_name 'httpd'
  action [:start, :enable]
end

#include_recipe 'apache::websites'
