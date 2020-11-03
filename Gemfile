source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
gem 'redis-rails'
gem 'redis-namespace'
# Use ActiveModel has_secure_password

gem 'active_model_serializers', '~> 0.10.0'
gem 'activerecord-import'
gem 'global'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'ridgepole'
gem 'config'
gem 'slim-rails'
gem 'kaminari'
gem 'cocoon'
gem 'rack-user_agent'
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'unicorn'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'bullet'
  gem 'pry', '>= 0.10.4'
  gem 'pry-rails', '~> 0.3.4'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-byebug', '~> 3.9.0' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'rspec-rails', '~> 3.x'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'rubocop'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
