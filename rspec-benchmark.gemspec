# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/benchmark/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-benchmark"
  spec.version       = RSpec::Benchmark::VERSION
  spec.authors       = ["Piotr Murach"]
  spec.email         = [""]
  spec.summary       = %q{Performance testing matchers for RSpec}
  spec.description   = %q{Performance testing matchers for RSpec that provide simple way to specify speed benchmark expectations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'benchmark-perf', '~> 0.2.0'
  spec.add_dependency 'rspec', '>= 3.0.0', '< 4.0.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end
