#
# Cookbook Name:: fuelphp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/vagrant/fuelphp" do
  repository "git://github.com/fuel/fuel.git"
  action :checkout
end

bash "init_fuelphp" do
  cwd "/vagrant/fuelphp"
  code <<-EOH
  php oil refine install
  php composer.phar self-update
  php composer.phar update
  EOH
  action :run
end