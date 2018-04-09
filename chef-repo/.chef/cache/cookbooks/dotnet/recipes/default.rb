#
# Cookbook:: dotnet
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

windows_package '4.5' do
    action :install
	source 'https://download.microsoft.com/download/B/A/4/BA4A7E71-2906-4B2D-A0E1-80CF16844F5F/dotNetFx45_Full_setup.exe'
	#node['dotnet']['download_url']
    installer_type :custom
    options "/S"    
end
