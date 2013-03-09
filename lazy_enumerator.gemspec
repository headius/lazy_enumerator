# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lazy_enumerator/version'

Gem::Specification.new do |spec|
  spec.name          = "lazy_enumerator"
  spec.version       = Enumerator::Lazy::VERSION
  spec.authors       = ["Charles Oliver Nutter"]
  spec.email         = ["headius@headius.com"]
  spec.description   = %q{A pure-Ruby implementation of Ruby 2.0's Enumerator::Lazy}
  spec.summary       = %q{An implementation of Enumerator::Lazy for Ruby 1.9.3 (and probably 1.8.7).}
  spec.homepage      = "https://github.com/headius/lazy_enumerator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
