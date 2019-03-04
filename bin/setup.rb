#!/usr/bin/env ruby
require 'pathname'

# path to your application root.
APP_ROOT = Pathname.new File.expand_path('../../',  __FILE__)

Dir.chdir APP_ROOT do
  puts "== Installing dependencies =="
  system "gem install bundler --conservative"
  system "bundle check || bundle install"

end
