#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install apache package

package 'apache2' do
  action :purge
#The beklow will work on successful completion of the above only
  notifies :install, 'package[apache2]', :immediately
end

#package 'apache2' do
#  action :nothing
#  action :install
#  notifies :restart, 'service[apache2]', :immediately
#end

#start a service and enable it and restart it
service 'apache2' do
#  supports :status => true, :restart => true, :reload => true
  action :nothing
#  action [ :disable, :restart ]
#  subscribes :restart, 'package[apache2]' , :immediately
end


#Make a directory - No use of this -  just trying
directory '/makeadir/makeitrec/permissiontoroot' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end
#Make a directory - no use of this - just trying
directory '/makedir/makeitrec/permissiontoubuntu' do
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
  action :create
  recursive true
end

#Change the default page
template '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0755'
end



