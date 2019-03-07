#
# Cookbook:: ruby
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute "yum update" do
  command "yum update -y"
end

execute "install java" do
  command "yum install java -y"
end

execute "install git" do
  command "yum install git -y"
end

execute "git init" do
  command "git init"
end

execute "git file reomve" do
  command "rm -rf ruby-rails-helloworld"
  cwd "/root"
end

execute "git clone" do
  command "git clone https://github.com/Praveenkumarm373/ruby-rails-helloworld.git"
  cwd "/root"
end

execute "ruby install" do
  command "yum install ruby -y"
  cwd "/root"
end

execute "install configuration 1" do
  command "yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel"
  cwd "/root"
end

execute "pp" do
  command "rm -rf .bashrc"
  cwd "/root"
end

cookbook_file "/root/.bashrc" do
  source ".bashrc"
  mode "0644"
end

cookbook_file "/root/ruby1.sh" do
  source "ruby1.sh"
  mode "007"
end

#execute "ss2" do
#  command "source ~/.bashrc"
#  cwd "/root"
#end

#execute "shellscript" do
#  command "./ruby1.sh"
#  cwd "/root"
#end
