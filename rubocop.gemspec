# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 2.5.0"

  spec.name = "rubocop-k1r8r0wn"
  spec.version = "1.1.0"
  spec.authors = ["Kirill Bobrov"]

  spec.summary = "This gem provides default rubocop settings for self-projects"
  spec.homepage = "https://github.com/k1r8r0wn/rubocop-k1r8r0wn"
  spec.license = "MIT"

  spec.files = Dir["lib/rubocop.*.yml"] << "lib/rubocop.yml"

  spec.add_dependency("rubocop", "~> 1.45.1")
  spec.add_dependency("rubocop-performance", "~> 1.16.0")
  spec.add_dependency("rubocop-rails", "~> 2.17.4")
  spec.add_dependency("rubocop-rake", "~> 0.6.0")
  spec.add_dependency("rubocop-rspec", "~> 2.18.1")
  spec.add_dependency("rubocop-i18n", "~> 3.0.0")

  spec.add_development_dependency("bundler", "~> 2.4.6")
  spec.add_development_dependency("rake", "~> 13.0.6")
end
