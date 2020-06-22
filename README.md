[![Build Status](https://travis-ci.com/davidrunger/rspec_performance_summary.svg?branch=master)](https://travis-ci.com/github/davidrunger/rspec_performance_summary)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=davidrunger/rspec_performance_summary)](https://dependabot.com)
![GitHub tag (latest SemVer pre-release)](https://img.shields.io/github/v/tag/davidrunger/rspec_performance_summary?include_prereleases)

# RspecPerformanceSummary

Print the execution time of your slowest RSpec examples.

![rspec_performance_summary screenshot](https://user-images.githubusercontent.com/8197963/85248189-f61a2980-b404-11ea-8eef-503b43808d63.png)

# Table of Contents

<!--ts-->
   * [RspecPerformanceSummary](#rspecperformancesummary)
   * [Table of Contents](#table-of-contents)
   * [Installation](#installation)
   * [Usage](#usage)
   * [Credit](#credit)
   * [Development](#development)
   * [For maintainers](#for-maintainers)
   * [License](#license)

<!-- Added by: david, at: Sun Jun 21 21:56:23 PDT 2020 -->

<!--te-->

# Installation

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

# Usage

Just run one or more of your RSpec tests! The performance summary should be printed automatically
after the tests have completed.

# Credit

I borrowed this code for the performance logging from
https://coderwall.com/p/l3nl_w/measure-spec-execution-time .

I borrowed the general code approach for plugging into RSpec from a gem from
[rspec-retry](https://github.com/NoRedInk/rspec-retry).

# Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bin/rspec` to
run the tests. You can also run `bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

# For maintainers

To release a new version:
1. check out the `master` branch
2. update `CHANGELOG.md`
3. update the version number in `version.rb`
4. `bundle install` (which will update `Gemfile.lock`)
5. commit the changes with a message like `Prepare to release v0.1.1`
6. push the changes to `origin/master` (GitHub) via `git push`
7. run `bin/release`, which will create a git tag for the version and push git commits and tags

# License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).
