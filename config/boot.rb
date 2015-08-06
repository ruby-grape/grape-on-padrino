RACK_ENV = ENV['RACK_ENV'] ||= ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
PADRINO_ROOT = File.expand_path('../..', __FILE__) unless defined?(PADRINO_ROOT)

require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
Bundler.require(:default, RACK_ENV)

['config/initializers'].each do |path|
  Dir[File.expand_path("../../#{path}/**/*.rb", __FILE__)].each do |f|
    require f
  end
end

Padrino::Logger::Config[:test] = { log_level: :debug, stream: :to_file }
Padrino::Logger::Config[:development] = { log_level: :devel, stream: :stdout }
Padrino::Logger::Config[:production] = { log_level: :info, stream: :to_file }

Padrino.load!
