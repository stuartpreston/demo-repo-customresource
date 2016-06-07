#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

powershell_file_as_user 'c:\\myscript.ps1' do
  username 'myusername'
  password 'mypassword'
  domain 'mydomain.com'
end
