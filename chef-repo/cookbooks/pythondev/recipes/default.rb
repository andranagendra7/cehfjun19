#
# Cookbook Name:: pythondev
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "/root/python" do

action :create

end

package "httpd" do

action :install

end

service "httpd" do

action [:enable, :start]

end

