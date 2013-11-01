#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
%w{ php php-mysql php-mbstring php-pdo }.each do |pkg|
  package pkg do
    action :install
  end
end
