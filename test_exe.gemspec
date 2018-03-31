
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_exe/version'

Gem::Specification.new do |spec|
  spec.name          = 'test_exe'
  spec.version       = TestExe::VERSION
  spec.authors       = ['StephenMcGuckinDAT']
  spec.email         = ['stephendmcguckin@gmail.com']

  spec.summary       = 'this is a test gem'
  spec.description   = 'A test gem for setting up ruby executable'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
