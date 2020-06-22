## v0.1.3 (2020-06-21)
### Docs
- Add screenshot to README.md
- Add a table of contents to README.md
- Add badges to README.md (Travis, Dependabot, GitHub version tag)

### Maintenance
- Tweak Travis config (add `os` and `dist` specifications, remove `gem install bundler -v 2.1.4`,
  only send emails when builds fail, run `rubocop`, run RSpec via `bin/rspec`).

## 0.1.2 - 2020-06-13
### Fixed
- Add `rspec-core` as an explicit dependency

### Docs
- Consolidate duplicate "Installation" sections in README.md

## 0.1.1 - 2020-06-13
### Docs
- Mentioned that the general code approach was modelled on
  [rspec-retry](https://github.com/NoRedInk/rspec-retry).
- Add installation and usage instructions.

## 0.1.0 - 2020-06-13
### Initial release
- This gem prints the execution time of the 10 slowest examples in an RSpec test suite run.
