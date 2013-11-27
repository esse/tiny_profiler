# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiny_profiler/version'

Gem::Specification.new do |spec|
  spec.name          = "tiny_profiler"
  spec.version       = TinyProfiler::VERSION
  spec.authors       = ["Piotr Szmielew"]
  spec.email         = ["p.szmielew@ava.waw.pl"]
  spec.description   = %q{Tiny profiler for ruby}
  spec.summary       = %q{Tiny profiler for ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
