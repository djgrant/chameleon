path = File.expand_path('../lib', __FILE__)
require File.join(path, 'chameleon-sass')

Gem::Specification.new do |s|
  s.name        = 'chameleon-sass'
  s.summary     = "Chameleon"
  s.description = "A styleless Sass framework for responsive user interfaces"
  s.authors     = ["Daniel Grant"]
  s.email       = 'hello@danielgrant.im'
  s.homepage    = 'https://github.com/djgrant/chameleon'
  s.license     = 'MIT'

  s.version = ChameleonSass::VERSION
  s.date    = ChameleonSass::DATE

  s.files = ["README.md"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("assets/**/*.*")

  s.add_development_dependency "rspec", "~> 3.4.0"
end
