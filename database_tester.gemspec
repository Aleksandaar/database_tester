# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "database/tester/version"

Gem::Specification.new do |spec|
  spec.name          = "database_tester"
  spec.version       = Database::Tester::VERSION
  spec.authors       = ["Aleksandar Zoric"]
  spec.email         = ["aleksandroz.mail@gmail.com"]

  spec.summary       = %q{Testing database methods made easy.}
  spec.description   = %q{Test ActiveRecord methods against specific models in your database.}
  spec.homepage      = "http://aleksandroz.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end