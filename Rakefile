require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << ["test"]
  t.pattern = "test/**/*.rb"
  t.warning = true
end

task default: :test
