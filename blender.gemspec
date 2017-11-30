# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'blender_uol'
  spec.version       = '1.0.0'
  spec.authors       = ['Andrej Antas']
  spec.email         = ['antasa@uol.cz']

  spec.summary       = 'robot zpracovávající doklady nahrané od zákazníků'
  spec.description   = 'robot zpracovávající doklady nahrané od zákazníků'
  spec.homepage      = 'https://gitlab.uol.cz/expert/blender'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'overcommit'
  spec.add_development_dependency 'rubocop', '~> 0.35.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'simplecov'

  spec.add_runtime_dependency('activesupport', '~> 4.2.0')
end
