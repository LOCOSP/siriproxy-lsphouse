# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-lsphouse"
  s.version     = "0.0.1"
  s.authors     = ["locosp"]
  s.email       = [""]
  s.homepage    = "https://github.com/LOCOSP/siriproxy-lsphouse/"
  s.summary     = %q{SiriProxy plugin for Raspberry Pi specific control}
  s.description = %q{SiriProxy plugin for Raspberry Pi specific control}

  s.rubyforge_project = ""

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
