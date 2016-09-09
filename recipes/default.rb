#
# Cookbook Name:: QIIME
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe 'build-essential'

# ubuntu package dependencies for base qiime
# now need python-tk to prevent import _tkinter error.
# See eg. http://stackoverflow.com/questions/26702119/installing-tkinter-on-ubuntu-14-04
package %w(pkg-config libpng-dev libjpeg8-dev libfreetype6-dev python-tk) do
  action :install
end

python_runtime '2'

python_package 'numpy'

python_package 'qiime' do
  version node['QIIME']['version']
end

magic_shell_environment 'QIIME_VERSION' do
  value node['QIIME']['version']
end
