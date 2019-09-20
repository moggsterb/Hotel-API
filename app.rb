ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

require "./setup/libs" # Require libraries
require "./setup/configure" # Require config
require "./setup/db" # Require app setup

Dir["./app/models/**/*.rb"].each{|file| require file }
Dir["./app/controllers/**/*.rb"].each{|file| require file }

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

register Sinatra::CrossOrigin
