# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in rspec_performance_summary.gemspec
gemspec

group :development, :test do
  gem 'rake', '~> 13.2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rspec', require: false
  gem 'runger_style', require: false
end

group :development do
  gem 'runger_release_assistant', require: false
end

group :test do
  gem 'rspec', '~> 3.13'
end
