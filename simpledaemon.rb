#!/usr/bin/env ruby
require 'rubygems'
require 'daemons'

Daemons.run_proc('simpledaemon.rb') do
  loop do
    `date >> /tmp/simpledaemon_log.txt`
    sleep(5)
  end
end
  