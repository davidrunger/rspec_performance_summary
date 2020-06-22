# frozen_string_literal: true

require_relative 'lib/rspec_performance_summary/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_performance_summary'
  spec.version       = RspecPerformanceSummary::VERSION
  spec.authors       = ['David Runger']
  spec.email         = ['davidjrunger@gmail.com']

  spec.summary       = 'Print the execution time of your slowest RSpec examples.'
  spec.description   = 'Print the execution time of your slowest RSpec examples.'
  spec.homepage      = 'https://github.com/davidrunger/rspec_performance_summary/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] =
    'https://github.com/davidrunger/rspec_performance_summary/blob/master/CHANGELOG.md'

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rspec-core', '~> 3.0'
end
