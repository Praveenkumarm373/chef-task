#
# Cookbook:: patch
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

case node['platform_family']
when 'debian'
  include_recipe 'patch::debian'
when 'rhel'
  include_recipe 'patch::rhel'
else
  log 'Not able to locate supported OS' do
    level :warn
  end
end

