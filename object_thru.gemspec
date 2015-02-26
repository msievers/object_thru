# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_thru/version'

Gem::Specification.new do |spec|
  spec.name          = "object_thru"
  spec.version       = ObjectThru::VERSION
  spec.authors       = ["Michael Sievers"]
  spec.summary       = %q{Provides Object#thru as an complement to Object#tap}
  spec.homepage      = "https://github.com/msievers/object_thru"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 1.7"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "rspec",     ">= 3.0.0", "< 4.0.0"
  spec.add_development_dependency "simplecov", ">= 0.8.0"
end
