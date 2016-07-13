#
# Cookbook Name:: QIIME
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'python'

# ubuntu package dependencies for base qiime
package %w(pkg-config libpng-dev libjpeg8-dev libfreetype6-dev) do
  action :install
end

python_pip 'numpy' do
end

python_pip 'qiime' do
  version node['QIIME']['version']
end

magic_shell_environment 'QIIME_VERSION' do
  value node['QIIME']['version']
end
