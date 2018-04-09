require 'spec_helper'

describe 'dotnet::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }

# Tests whether the required version of .NET Framework was installed correctly.  
it 'installs a windows_package with an explicit action' do
    expect(chef_run).to install_windows_package('.NET Framework 4.5')
  end

# Tests whether the w3svc service was started perfectly.
it 'starts a service with an explicit action' do
    expect(chef_run).to start_service('w3svc')
  end

# Tests whether the w3svc service is enabled.
it 'enables a service with an explicit action' do
    expect(chef_run).to enable_service('w3svc')
  end
end