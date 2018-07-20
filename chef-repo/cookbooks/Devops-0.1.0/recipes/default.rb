#
# Cookbook Name:: Devops
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
#


package "docker"do

action :install

end

service "docker"do

action [ :enable, :start ]

end

execute "run the contaiber" do


command 'cd /;docker run -dti --name nnn ubuntu /bin/bash'

end

