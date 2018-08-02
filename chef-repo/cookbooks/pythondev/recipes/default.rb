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
file "/var/www/html/index.html" do

action :create
content "<html><body><h1>'welcome chef-node topic'</h1></body></html>"
end
directory "/root/flask" do
action :create
end
