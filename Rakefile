#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/path_generator'
  t.pattern = 'test/**/*_test.rb'
end

desc "Open an irb session preloaded with this gem"
task :console do
  sh "irb -rubygems -I lib -r path_generator.rb"
end

task :default => :test
