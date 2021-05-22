# frozen_string_literal: true

require_relative 'lib/pgrh/version'

Gem::Specification.new do |spec|
  spec.name          = 'pgrh'
  spec.version       = PGRH::VERSION
  spec.authors       = ['Pavel Guseynov']
  spec.email         = ['pavel@didlogic.com']

  spec.summary       = 'P.G. Rails helpers'
  spec.homepage      = 'https://github.com/Pavel-Guseynov/pgrh'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Pavel-Guseynov/pgrh'
  spec.metadata['changelog_uri'] = 'https://github.com/Pavel-Guseynov/pgrh/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 6.1'
end