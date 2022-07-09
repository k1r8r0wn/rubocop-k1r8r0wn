# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 2.5.0"

  spec.name = "rubocop-k1r8r0wn"
  spec.version = "1.0.0"
  spec.authors = ["Kirill Bobrov"]

  spec.summary = "This gem provides default rubocop settings for self-projects"
  spec.homepage = "https://github.com/k1r8r0wn/rubocop-k1r8r0wn"
  spec.license = "MIT"

  spec.files = Dir["lib/rubocop.*.yml"] << "lib/rubocop.yml"

  spec.add_dependency("rubocop", "~> 1.31.2")
  spec.add_dependency("rubocop-performance", "~> 1.14.2")
  spec.add_dependency("rubocop-rails", "~> 2.15.2")
  spec.add_dependency("rubocop-rake", "~> 0.6.0")
  spec.add_dependency("rubocop-rspec", "~> 2.12.1")
  spec.add_dependency("rubocop-i18n", "~> 3.0")

  spec.add_development_dependency("bundler", "~> 2.3.17")
  spec.add_development_dependency("rake", "~> 13.0.6")
end
