# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'golint/version'

Gem::Specification.new do |spec|
  spec.name          = "golint"
  spec.version       = Golint::VERSION
  spec.authors       = ["Kir Shatrov"]
  spec.email         = ["shatrov@me.com"]
  spec.summary       = %q{Ruby wrapper for golint utility}
  spec.description   = %q{Ruby wrapper for golint utility}
  spec.homepage      = "https://github.com/kirs/golint-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
end
