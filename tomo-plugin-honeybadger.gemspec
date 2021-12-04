require_relative "lib/tomo/plugin/honeybadger/version"

Gem::Specification.new do |spec|
  spec.name = "tomo-plugin-honeybadger"
  spec.version = Tomo::Plugin::Honeybadger::VERSION
  spec.authors = ["Usman"]
  spec.email = ["uxman.sherwani@gmail.com"]

  spec.summary = "Honeybadger tasks for tomo"
  spec.homepage = "https://github.com/uxxman/tomo-plugin-honeybadger"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/uxxman/tomo-plugin-honeybadger/issues",
    "changelog_uri" => "https://github.com/uxxman/tomo-plugin-honeybadger/releases",
    "source_code_uri" => "https://github.com/uxxman/tomo-plugin-honeybadger",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "tomo", "~> 1.0"
end
