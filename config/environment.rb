# Load the rails application
require File.expand_path('../application', __FILE__)
require 'will_paginate'
config.gem 'paperclip', :source => 'http://rubygems.org'


# Initialize the rails application
Demo2::Application.initialize!
