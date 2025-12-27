lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "lib/rubocop/k1r8r0wn/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-k1r8r0wn"
  spec.version = Rubocop::K1r8r0wn::VERSION
  spec.license = "MIT"
  spec.summary = "Custom code style checking for personal usage."
  spec.description = <<-DESCRIPTION
    Custom RuboCop code style enforcing & linting tool. It includes Rubocop configuration
    used in personal projects"
  DESCRIPTION
  spec.author = "Kirill B."
  spec.homepage = "https://github.com/k1r8r0wn/rubocop-k1r8r0wn"
  spec.required_ruby_version = ">= 3.4.8" # rubocop:disable Gemspec/RequiredRubyVersion

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/-/blob/master/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject { |f| (f == gemspec) || f.start_with?(*%w[bin/ .git Gemfile]) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.82"
  spec.add_dependency "rubocop-factory_bot", "~> 2.28"
  spec.add_dependency "rubocop-i18n", "~> 3.2"
  spec.add_dependency "rubocop-performance", "~> 1.26"
  spec.add_dependency "rubocop-rails", "~> 2.34"
  spec.add_dependency "rubocop-rake", "~> 0.7"
  spec.add_dependency "rubocop-rspec", "~> 3.8.0"
  spec.add_dependency "rubocop-rspec_rails", "~> 2.32"
  spec.add_dependency "rubocop-thread_safety", "~> 0.7"

  spec.add_development_dependency "brakeman", "~> 7.1"
  spec.add_development_dependency "bundler", "~> 4"
  spec.add_development_dependency "bundler-audit", "~> 0.9"
  spec.add_development_dependency "lefthook", "~> 2"
  spec.add_development_dependency "pry-byebug", "~> 3.11"
  spec.add_development_dependency "rake", "~> 13.3"
end
