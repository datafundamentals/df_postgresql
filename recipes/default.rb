#
# Cookbook Name:: df_postgresql
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# install the package of postgresql

case node['platform_family']
when "rhel" 
	include_recipe "df_postgresql::rhel"
when "debian"
	include_recipe "df_postgresql::debian"
end