# rubocop-k1r8r0wn
This gem provides default rubocop settings for self-projects

Inspired: https://github.com/airbnb/ruby

## Usage

1. Add `gem "rubocop-k1r8r0wn", git: "git@github.com:k1r8r0wn/rubocop-k1r8r0wn.git"` to your Gemfile.
2. Edit your local `.rubocop.yml`:

```yml
inherit_gem:
  # For Rails projects:
  rubocop-k1r8r0wn: lib/rubocop.yml
  # In other cases:
  rubocop-k1r8r0wn: lib/rubocop.rails.yml

AllCops:
  TargetRubyVersion: 3.1.2

# Put the optional overrides below
```
