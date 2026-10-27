# frozen_string_literal: true

source 'https://rubygems.org'

gem 'grape', ENV.fetch('GRAPE_VERSION', '~> 3.2.0')
gem 'padrino', ENV.fetch('PADRINO_VERSION', '~> 0.17.0')
gem 'puma'
gem 'sinatra', ENV.fetch('SINATRA_VERSION', '>= 0')

group :development, :test do
  gem 'rake'
  gem 'rubocop'
end

group :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-lcov', require: false
end
