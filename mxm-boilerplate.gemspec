# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mxm/rails/version"

Gem::Specification.new do |s|
  s.name        = "mxm-boilerplate"
  s.version     = Mxm::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Bell"]
  s.email       = ["chris@madebymany.co.uk"]
  s.homepage    = "http://github.com/madebymany/mxm-boilerplate"
  s.summary     = %q{ Sensible front-end defaults for MxM Rails projects }
  s.description = %q{}

  s.rubyforge_project = "html5-rails"

  s.add_dependency "railties",      "~> 3.1"
  s.add_dependency "thor",          "~> 0.14"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
