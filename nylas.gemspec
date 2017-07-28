# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
#   Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require './lib/version.rb'

Gem::Specification.new do |gem|
  gem.name = 'nylas'
  gem.homepage = 'http://github.com/nylas/nylas-ruby'
  gem.license = 'MIT'
  gem.summary = %Q{Gem for interacting with the Nylas API}
  gem.description = %Q{Gem for interacting with the Nylas API.}
  gem.version = Nylas::VERSION
  gem.email = "support@nylas.com"
  gem.authors = ["Ben Gotow", "Karim Hamidou", "Jennie Lees", "Michael Pfister"]
  gem.files = Dir.glob('lib/**/*.rb')
  gem.platform = 'java' if RUBY_PLATFORM[/java/] == 'java'
  gem.add_dependency 'rest-client', '~> 2.0'
  gem.add_dependency 'yajl-ruby', ['~> 1.2', '>= 1.2.1']
  gem.add_dependency 'em-http-request', ['~> 1.1', '>= 1.1.3']
end
