#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
  action :install
end

service "httpd" do
  action [:enable, :start]
end

directory "/var/www/html" do
  only_if { File.exists? "/var/www/html" }
  recursive true
  action :delete
end

link "/var/www/html" do
  to "/vagrant/fuelphp"
end
