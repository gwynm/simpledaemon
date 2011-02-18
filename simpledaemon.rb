#!/usr/bin/env ruby
require 'rubygems'
require "bundler/setup"

require 'daemons'

#should generate /tmp/simpledaemon.rb.pid
Daemons.run_proc('simpledaemon.rb', :dir_mode=>:normal,:dir=>"/tmp",:multiple=>false) do
  loop do
    `date >> /tmp/simpledaemon_log.txt`
    sleep(5)
  end
end
  