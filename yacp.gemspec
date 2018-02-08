# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yacp/version"

Gem::Specification.new do |spec|
  spec.name          = "yacp"
  spec.version       = YACP::VERSION
  spec.authors       = ["Jessie Keck"]
  spec.email         = ["jessie.keck@gmail.com"]

  spec.summary       = %q{yacp = Yet Another Changelog Parser (in ruby)}
  spec.description   = <<-DESC
                         A changelog parser written in ruby with a few simple goals:
                           1. Parse CHANGELOG files on GitHub that follow the https://keepachangelog.com format.
                           2. Model the releases to able to differentiate between the various Added, Changed, Removed, etc. categories.
                           3. Provide a simple query interface to to access releases.
                           4. Provide enhanced content for particular formatted data (e.g. linking issues/pull requests).
                           5. Provide a simple set of tools to help manage the CHANGELOG file itself.
                      DESC
  spec.homepage      = "https://github.com/jkeck/yacp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
