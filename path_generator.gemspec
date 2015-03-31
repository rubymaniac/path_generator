# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'path_generator'

Gem::Specification.new do |spec|
  spec.name          = "path_generator"
  spec.version       = PathGenerator.const_get('VERSION')
  spec.authors       = ["rubymaniac"]
  spec.email         = ["ath.ger@gmail.com"]
  spec.summary       = %q{PathGenerator is a microgem that generates, depth-first, paths from a structure.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
