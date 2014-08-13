Gem::Specification.new do |gem|
  gem.authors       = ['Peter Wu']
  gem.email         = ['peter.wu@simplybusiness.com']
  gem.description   = %q{Rules DSL}
  gem.summary       = %q{Rules DSL}
  gem.homepage      = %q{https://github.com/simplybusiness/rulezilla}

  gem.files         = `git ls-files`.split($\)
  gem.name          = 'rulezilla'
  gem.require_paths = ['lib']
  gem.version       = "0.0.3"
  gem.license       = 'MIT'

  gem.add_development_dependency('gherkin')
end
