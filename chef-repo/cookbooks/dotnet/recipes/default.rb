#
# Cookbook:: dotnet
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

windows_package node['dotnet']['windows_package']['name'] do
    action :install	
	# added source attribute
	source node['dotnet']['download_url']
    installer_type :custom
    options "/S"    
end

%w{ IIS-WebServerRole IIS-WebServer }.each do |feature|
  windows_feature feature do
    action :install
  end
end

# Service name w3svc
service node['dotnet']['service']['name'] do
  action [:start, :enable]
end