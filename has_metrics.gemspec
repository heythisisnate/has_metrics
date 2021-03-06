# -*- encoding: utf-8 -*-
require File.expand_path('../lib/has_metrics/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Allan Grant"]
  gem.email         = ["allan@allangrant.net"]
  gem.description   = %q{Calculate metrics and store them in the DB.}
  gem.summary       = %q{Calculate "metrics" (any expensive methods) on ActiveRecord entries and memoize them to an automagical table.}
  gem.homepage      = "http://github.com/allangrant/has_metrics"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "has_metrics"
  gem.require_paths = ["lib"]
  gem.version       = HasMetrics::VERSION

  gem.add_dependency "activerecord"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "shoulda"
  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "pry"
end
