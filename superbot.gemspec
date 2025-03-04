
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "superbot/version"

Gem::Specification.new do |spec|
  spec.name          = "superbot"
  spec.version       = Superbot::VERSION
  spec.authors       = ["Superbots"]
  spec.email         = [""]

  spec.summary       = %q{Superbot Testing}
  spec.description   = %q{Superbot DSL and CLI}
  spec.homepage      = "https://github.com/superbothq/superbot"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "clamp", "1.2.1"
  spec.add_runtime_dependency "zaru", "0.2.0"
  spec.add_runtime_dependency "sinatra", "2.0.5"
  spec.add_runtime_dependency "launchy", "2.4.3"
  spec.add_runtime_dependency "sinatra-silent", "0.0.1"
  spec.add_runtime_dependency "kommando", "0.1.2"

  spec.add_runtime_dependency "superbot-cloud", "0.3.8"
  spec.add_runtime_dependency "superbot-teleport", "0.3.9"
  spec.add_runtime_dependency "superbot-selenium-webdriver", "1.0.5"
  spec.add_runtime_dependency "superbot-runner", "0.1.3"
  spec.add_runtime_dependency "superbot-record", "0.1.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.62"
  spec.add_development_dependency "simplecov", "~> 0.16"
  spec.add_development_dependency "excon", "~> 0.62"

  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "guard-rubocop", "~> 1.3"
end
