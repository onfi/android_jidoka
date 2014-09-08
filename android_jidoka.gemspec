# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'android_jidoka/version'

Gem::Specification.new do |spec|
  spec.name          = "android_jidoka"
  spec.version       = AndroidJidoka::VERSION
  spec.authors       = ["onfi"]
  spec.email         = ["simodake@gmail.com"]
  spec.summary       = %q{Oparation a android terminal.}
  spec.description   = %q{Oparation from adb.}
  spec.homepage      = "http://github.com/onfi/android_jidoka"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
