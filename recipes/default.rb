#
# Cookbook:: tac_plus
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'nux-misc' do
  description 'Nux! Repo'
  baseurl 'http://li.nux.ro/download/nux/misc/el6/x86_64/'
  gpgkey 'http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro'
  enabled true
  action :create
end

package 'tac_plus' do
  action :install
end
