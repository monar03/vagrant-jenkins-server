#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "jenkins" do
  action :install
end
 
service "jenkins" do
  supports :status => :true, :restart => true, :reload => true
  action [ :enable, :start ]
end
