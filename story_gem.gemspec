# -*- encoding: utf-8 -*-
require File.expand_path('../lib/story_gem/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anton Katunin"]
  gem.email         = ["antulik@gmail.com"]
  gem.description   = %q{Integration with StoryLine app}
  gem.summary       = %q{Integration with StoryLine app}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "story_gem"
  gem.require_paths = ["lib"]
  gem.version       = StoryGem::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'omniauth'
  gem.add_dependency 'omniauth-oauth2'
  gem.add_dependency 'httparty'

  gem.add_development_dependency 'rspec'

end
