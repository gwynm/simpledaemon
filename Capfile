require 'rubygems'
require 'railsless-deploy'

server "ec2-79-125-72-234.eu-west-1.compute.amazonaws.com", :app, :web, :db, :primary => true

set :application, "simpledaemon"
set :user, "ubuntu"
set :scm, "git"
set :repository, "git@github.com:gwynm/simpledaemon.git"
set :branch, "master"
set :deploy_to, "/home/ubuntu/simpledaemon"

ssh_options[:forward_agent] = true
ssh_options[:keys] = "/Users/gwynmorfey/.ssh/gwynec2.pem"