#
# Cookbook:: tac_plus
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'tac_plus::default' do
  context 'When all attributes are default, on an CentOS 7.3' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.3.1611')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'writes the tac_plus configuration file' do
      expect(chef_run).to create_template '/etc/tac_plus.conf'
    end

    it 'installs the tac_plus package' do
      expect(chef_run).to install_package 'tac_plus'
    end

    it 'creates the upstream repository' do
      expect(chef_run).to create_yum_repository 'nux-misc'
    end
  end
end
