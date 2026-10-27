# frozen_string_literal: true

require 'rubygems'
require 'simplecov'

ENV['RACK_ENV'] ||= 'test'

require 'rack/test'

require File.expand_path('../config/boot', __dir__)

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec
  config.raise_errors_for_deprecations!
end
