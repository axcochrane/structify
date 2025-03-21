require_relative 'lib/structify/version'

Gem::Specification.new do |spec|
  spec.name          = "structify"
  spec.version       = Structify::VERSION
  spec.authors       = ["Kieran Klaassen"]
  spec.email         = ["kieranklaassen@gmail.com"]

  spec.summary       = %q{A DSL for defining extraction schemas for LLM-powered models}
  spec.description   = %q{Structify provides a simple DSL to integrate with Rails models for LLM extraction, including versioning, assistant prompts, and more}
  spec.homepage      = "https://github.com/kieranklaassen/structify"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) || f.end_with?('.gem') }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "activesupport", "~> 8"
  spec.add_dependency "attr_json", "~> 2.1"
end
