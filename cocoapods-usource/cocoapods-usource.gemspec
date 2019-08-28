# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-usource/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-usource'
  spec.version       = CocoapodsUsource::VERSION
  spec.authors       = ['suzhiqiu']
  spec.email         = ['zhiqiu.su@ucarinc.com']
  spec.description   = %q{A short description of cocoapods-usource.}
  spec.summary       = %q{A longer description of cocoapods-usource.}
  spec.homepage      = 'https://github.com/suzhiqiu/USource/tree/develop/cocoapods-usource'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
