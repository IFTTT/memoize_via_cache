# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memoize_via_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "memoize_via_cache"
  spec.version       = MemoizeViaCache::VERSION
  spec.authors       = ["Nicholas Silva"]
  spec.email         = ["nick@silvamerica.com"]
  spec.summary       = %q{Adds the ability to memoize functions through the Rails cache.}
  spec.description   = %q{Adds the ability to memoize functions through the Rails cache.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
