# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rainbros/version"

Gem::Specification.new do |s|
  s.name        = "rainbros"
  s.version     = Rainbros::VERSION
  s.authors     = ["ian asaff"]
  s.email       = ["ian.asaff@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{This gem prints rainbros to your console}
  s.description = %q{Most super awesome gem that makes you think of your awesome multicultural bros.}

  s.rubyforge_project = "rainbros"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
   s.add_runtime_dependency "dicks"
   s.add_runtime_dependency "lolcat"
end
