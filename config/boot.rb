ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
env = ENV['RAILS_ENV'] || 'development'

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' if env != 'development' # Speed up boot time by caching expensive operations.
