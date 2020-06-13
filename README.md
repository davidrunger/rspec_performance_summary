# RspecPerformanceSummary

Print the execution time of your slowest RSpec examples.

## Installation

Add the gem to the `test` group of your application's `Gemfile`. Because the gem is not released via
RubyGems, you will need to install it from GitHub.

```ruby
group :test do
  gem 'rspec_performance_summary', require: false, # we'll require it manually in `spec_helper.rb`
    git: 'https://github.com/davidrunger/rspec_performance_summary.git'
end
```

And then execute:

    $ bundle install

Finally, add this to the `spec/spec_helper.rb` file in your project:
```rb
require 'rspec_performance_summary'
```

## Usage

Just run one or more of your RSpec tests! The performance summary should be printed automatically
after the tests have completed.

## Credit

I borrowed this code for the performance logging from
https://coderwall.com/p/l3nl_w/measure-spec-execution-time .

I borrowed the general code approach for plugging into RSpec from a gem from
[rspec-retry](https://github.com/NoRedInk/rspec-retry).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run
the tests. You can also run `bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new
version, update the version number in `version.rb`, and then run `bin/release`, which will create a
git tag for the version and push git commits and tags.

## License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).
