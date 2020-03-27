require_relative 'lib/book_chart/version'

Gem::Specification.new do |spec|
  spec.name          = "book_chart"
  spec.version       = BookChart::VERSION
  spec.authors       = ["ashleymader"]
  spec.email         = ["ashley.mader12@gmail.com"]

  spec.summary       = "Fetches top 20 books"
  spec.description   = "Fetches top 20 books in fiction and nonfiction in the most read and most sold categories on Amazon."
  spec.homepage      = "https://github.com/ashleymader/book_chart"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ashleymader/book_chart"
  spec.metadata["changelog_uri"] = "https://github.com/ashleymader/book_chart/changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'nokogiri'
  spec.add_development_dependency 'pry'
  #spec.add_runtime_dependency 'open-uri'


end
