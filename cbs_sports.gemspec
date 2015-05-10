# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cbs_sports/version"

Gem::Specification.new do |spec|
  spec.name          = "cbs_sports"
  spec.version       = CBSSports::VERSION
  spec.authors       = ["Michael Stock"]
  spec.email         = ["mikeastock@gmail.com"]

  spec.summary       = %q{Wrapper of CBSSports API}
  spec.description   = %q{This gem is a Ruby wrapper around the CBSSports API}
  spec.homepage      = "https://github.com/mikeastock/cbs_sports"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "hashie"
  spec.add_dependency "multi_xml"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "codeclimate-test-reporter"
end
