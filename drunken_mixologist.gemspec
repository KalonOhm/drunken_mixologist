# frozen_string_literal: true

require_relative "lib/drunken_mixologist/version"

Gem::Specification.new do |spec|
  spec.name = "drunken_mixologist"
  spec.version = DrunkenMixologist::VERSION
  spec.authors = ["Kalon Ohmstede"]
  spec.email = ["106362195+KalonOhm@users.noreply.github.com"]

  spec.summary = "Randomize mixology ingredients to create new mixed drink. For dares?"
  spec.description = "Goal of project is to gather mixed-drink ingredients (alcohol, bitters, syrups, garnishes, etc) then, when called, randomly produce a new mixed-drink that could conceivably be created, no matter how bad it may sound. Idea came up while watching a Youtube channel called How to Drink, with a series of videos in which the host pulled supposedly real orders purchased by patrons at his bar, orders which sounded strange, bad, or just uncommon. He would then try to create his interpretation of that drink order, and taste-test ist. Some where understandibly awful, but some surprised himself with their quality and flavor. Sounded like a funny idea when I heard about this project."
  spec.homepage = ""
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
