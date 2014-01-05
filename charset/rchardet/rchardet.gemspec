# -*- encoding: utf-8 -*-
  $:.push File.expand_path("../lib", __FILE__)
  require File.dirname(__FILE__) + '/lib/rchardet'

  Gem::Specification.new do |s|
    # From original rchardet
    s.name              = "rchardet"
    s.version           = CharDet::VERSION
#   s.author            = "Jeff Hodges"
    s.email             = "jeff@somethingsimilar.com"
    s.homepage          = "http://github.com/Xenapto/rchardet"
    s.platform          = Gem::Platform::RUBY
    s.summary           = "Character encoding auto-detection in Ruby. Updated for Ruby 2.1.0 by Xenapto."
#   s.files             = FileList["lib/**/*"]
    s.require_path      = "lib"
    s.has_rdoc          = false # TODO: fix
    s.extra_rdoc_files  = ['README', 'COPYING']
    s.rubyforge_project = "rchardet"
    s.license = "LGPL"
    # From template .gemspec
    s.platform          = Gem::Platform::RUBY
    s.authors           = ["Jeff Hodges"]
    s.description       = "Character encoding auto-detection in Ruby. Updated for Ruby 2.1.0 by Xenapto."
    s.files             = `git ls-files`.split("\n")
    s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
    s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    s.require_paths     = ["lib"]
  end
