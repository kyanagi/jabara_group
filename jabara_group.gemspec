
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jabara_group/version"

Gem::Specification.new do |spec|
  spec.name          = "jabara_group"
  spec.version       = JabaraGroup::VERSION
  spec.authors       = ["Kouhei Yanagita"]
  spec.email         = ["yanagi@shakenbu.org"]

  spec.summary       = %q{Add Enumerable#jabara for jabara grouping}
  spec.homepage      = "https://github.com/kyanagi/jabara_group"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "steep"
end
