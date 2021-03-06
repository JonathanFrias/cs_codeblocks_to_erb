# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cs_codeblocks_to_erb/version'

Gem::Specification.new do |spec|
  spec.name          = "cs_codeblocks_to_erb"
  spec.version       = CsCodeblocksToErb::VERSION
  spec.authors       = ["Shaun  Hubbard"]
  spec.email         = ["shaun.hubbard@ascentis.com", "jonathan.frias@ascentis.com"]
  spec.summary       = %q{Convert snippets of text and C# codeblocks into erb friendly format. }
  spec.description   = %q{Pull Requests Welcome, Semvar enforced. }
  spec.homepage      = "https://github.com/pedantix/cs_codeblocks_to_erb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "pry"
end
