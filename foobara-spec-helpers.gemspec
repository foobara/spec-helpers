require_relative "lib/foobara/spec_helpers/version"

Gem::Specification.new do |spec|
  spec.name = "foobara-spec-helpers"
  spec.version = Foobara::SpecHelpers::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Common spec helpers used in various Foobara projects."
  spec.homepage = "https://github.com/foobara/spec-helpers"

  # Equivalent to SPDX License Expression: Apache-2.0 OR MIT
  spec.license = "Apache-2.0 OR MIT"
  spec.licenses = ["Apache-2.0", "MIT"]

  spec.required_ruby_version = ">= 3.2.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "LICENSE*.txt",
    "CHANGELOG.md",
    "README.md"
  ]

  spec.require_paths = %w[lib]

  spec.add_dependency "foobara-util"

  spec.metadata["rubygems_mfa_required"] = "true"
end
