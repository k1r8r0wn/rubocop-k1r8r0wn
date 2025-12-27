[![CI](https://github.com/k1r8r0wn/rubocop-k1r8r0wn/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/k1r8r0wn/rubocop-k1r8r0wn/actions/workflows/ci.yml)
# rubocop-k1r8r0wn
This gem provides default rubocop settings for self-projects

Inspired: https://github.com/airbnb/ruby

## Usage

1. Add `gem "rubocop-k1r8r0wn", github: "k1r8r0wn/rubocop-k1r8r0wn", branch: "master"` to your Gemfile.
2. Edit your local `.rubocop.yml`:

```yml
# inherit_gem:
  # For Rails projects:
  # rubocop-k1r8r0wn: config/rubocop_rails_app.yml
  # For Ruby projects:
  # rubocop-k1r8r0wn: config/rubocop_ruby_app.yml

# Put the optional overrides below
```
