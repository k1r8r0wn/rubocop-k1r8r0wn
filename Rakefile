require "bundler/gem_tasks"
require "rubocop/rake_task"
require "rubocop"
require "rubocop-performance"
require "rubocop-rspec"

RuboCop::RakeTask.new(:rubocop) do |task|
  task.optaskions = %w[--config ./.rubocop.yml]
  task.requires << "rubocop-rspec"
  task.requires << "rubocop-performance"
end

task default: :rubocop
