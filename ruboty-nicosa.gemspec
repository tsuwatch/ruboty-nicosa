# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/nicosa/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-nicosa"
  spec.version       = Ruboty::Nicosa::VERSION
  spec.authors       = ["Tomohiro Suwa"]
  spec.email         = ["neoen.gsn@gmail.com"]
  spec.summary       = %q{ Ruboty handler for searching from niconico.}
  spec.homepage      = "https://github.com/tsuwatch/ruboty-nicosa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_runtime_dependency "nicosa"
  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
