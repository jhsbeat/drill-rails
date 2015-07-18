# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'drill/model/version'

Gem::Specification.new do |s|
  s.name          = "drill-rails"
  s.version       = Drill::Model::VERSION
  s.authors       = ["Hosang Jeon"]
  s.email         = ["jhsbeat@gmail.com"]
  s.description   = "This gem is Apache Drill integrations for Ruby on Rails."
  s.summary       = "Apache Drill integrations for Ruby on Rails."
  s.homepage      = "https://github.com/jhsbeat/drill-rails"
  s.license       = "Apache 2"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.extra_rdoc_files  = [ "README.md", "LICENSE" ]
  s.rdoc_options      = [ "--charset=UTF-8" ]

  s.required_ruby_version = ">= 1.9.3"

  s.add_dependency "activesupport", "~> 3.0", "> 3.0"
  s.add_dependency "hashie", "~> 2.1", ">= 2.1.1"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake", "~> 0"

  s.add_development_dependency "activemodel", "~> 3.0", "> 3.0"

#  s.add_development_dependency "oj"
#  s.add_development_dependency "kaminari"

# if defined?(RUBY_VERSION) && RUBY_VERSION > '1.9'
#   s.add_development_dependency "simplecov"
#    s.add_development_dependency "cane"
#    s.add_development_dependency "require-prof"
#  end
end
