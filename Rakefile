require 'bundler/setup'
require 'padrino-core/cli/rake'

PadrinoTasks.use(:database)
PadrinoTasks.init

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new :spec

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task default: [:rubocop, :spec]
