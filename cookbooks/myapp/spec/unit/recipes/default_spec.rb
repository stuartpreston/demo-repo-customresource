#
# Cookbook Name:: myapp
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'myapp::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'executes powershell as user' do
      expect(chef_run).to execute_powershell_file_as_user('c:\\myscript.ps1')
        .with_username('myusername')
        .with_password('mypassword')
    end
  end
end
