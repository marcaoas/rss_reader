$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "reader_rss/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "reader_rss"
  s.version     = ReaderRss::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ReaderRss."
  s.description = "TODO: Description of ReaderRss."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
  s.add_dependency "sanitize"
end
