#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'linter'
  gem.homepage           = 'http://structured-data.org/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'Extract Microdata and RDFa to provide Rich Snippet preview and analysis of structured data.'
  gem.description        = gem.summary

  gem.authors            = ['Gregg Kellogg', 'Stéphane Corlosquet']
  gem.email              = 'structured-data-dev@googlegroups.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(README.md VERSION) + Dir.glob('lib/**/*.rb')
  gem.require_paths      = %w(lib)
  gem.has_rdoc           = false

  gem.required_ruby_version       = '>= 1.9.3'
  gem.requirements                = []
  gem.add_runtime_dependency      'linkeddata',         '>= 1.0'
  gem.add_runtime_dependency      'sinatra-linkeddata', '>= 1.0'
  gem.add_runtime_dependency      'equivalent-xml'
  gem.add_runtime_dependency      'sinatra',            '>= 1.4.2'
  gem.add_runtime_dependency      'erubis',             '>= 2.7.0'
  gem.add_runtime_dependency      'haml',               '>= 4.0.0'
  gem.add_runtime_dependency      'curb',               '>= 0.8.3'
  gem.add_runtime_dependency      'facets',             '>= 2.9.3'
  gem.add_runtime_dependency      'nokogiri'
  gem.add_runtime_dependency      'json',               '>= 1.7'
  gem.add_development_dependency  'yard' ,              '>= 0.8.6'
  gem.add_development_dependency  'shotgun',            '>= 0.9'
  gem.add_development_dependency  'rspec',              '>= 2.13.0'
  gem.post_install_message        = nil
end
