require_relative "version"

local_ruby_version = File.read("#{__dir__}/.ruby-version").chomp
local_ruby_version_minor = local_ruby_version[/\A(\d+\.\d+)\.\d+\z/, 1]
minimum_ruby_version = "#{local_ruby_version_minor}.0"

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

  spec.required_ruby_version = ">= #{minimum_ruby_version}"

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
