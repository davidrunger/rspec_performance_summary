# frozen_string_literal: true

require 'rspec_performance_summary/version'

# This module contains code to print a summary of the execution time of the slowest 10
# examples/tests in an RSpec test suite run.
module RspecPerformanceSummary
  def self.setup
    RSpec.configure do |config|
      spec_stats = {}

      config.before(:suite) do
        spec_stats = {}
      end

      config.before(:each) do
        # See https://blog.dnsimple.com/2018/03/elapsed-time-with-ruby-the-right-way/ for
        # explanation of why we are using Ruby's monotonic clock.
        #
        # Note: you can also put `@__started = Process.clock_gettime(Process::CLOCK_MONOTONIC)`
        # anywhere in your spec, to start the timer at a different point
        @__started = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      end

      config.after(:each) do |example|
        spec_stats[example.full_description] =
          Float(Process.clock_gettime(Process::CLOCK_MONOTONIC)) - Float(@__started)
      end

      config.after(:suite) do
        puts(<<~LOG)

          -----------------------
          Spec Performance Report
          -----------------------
        LOG

        spec_stats.sort_by(&:last).last(10).each do |spec, took|
          # escape codes are for yellow color and green color
          puts("\e[0;33;49m#{took.round(3)}\e[0m secs - \e[0;32;49m#{spec}\e[0m")
        end
      end
    end
  end
end

RspecPerformanceSummary.setup
