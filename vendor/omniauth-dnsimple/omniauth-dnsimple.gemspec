# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/dnsimple/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-dnsimple'
  spec.version       = Omniauth::Dnsimple::VERSION
  spec.authors       = ['Luca Guidi']
  spec.email         = ['me@lucaguidi.com']

  spec.summary       = 'Omniauth DNSimple'
  spec.description   = 'Omniauth strategy for DNSimple API v2'
  spec.homepage      = 'https://developer.dnsimple.com'
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency             'omniauth-oauth2', '~> 1.4'
  spec.add_development_dependency 'bundler',         '~> 1.11'
  spec.add_development_dependency 'rake',            '~> 10.0'
end
