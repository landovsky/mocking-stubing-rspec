# COVERAGE=true rspec
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start 'rails'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'blender'
