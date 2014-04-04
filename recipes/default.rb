#
# Cookbook Name:: df_postgresql
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# install the package of postgresql

execute "pull postgres rpm" do 
	user "root"
	command "rpm -Uvh http://yum.postgresql.org/9.3/redhat/rhel-5-x86_64/pgdg-centos93-9.3-1.noarch.rpm"
	action :run
end

%w{postgresql93-server postgresql93-contrib}.each do |pkg| 

yum_package pkg do
	action :install
end
end

execute "create database" do 
	user "root" 
	command "/etc/init.d/postgresql-9.3 initdb" 
	action :run
end

service "postgresql-9.3" do 
	action [:enable, :start]
end

execute "chkconfig postgresql-9.3 on" do 
	user "root"
	action :run
end
