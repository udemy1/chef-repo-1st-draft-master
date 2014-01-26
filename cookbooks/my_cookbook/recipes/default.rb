
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "/tmp/greeting.txt" do
  content node['my_cookbook']['greeting']
end