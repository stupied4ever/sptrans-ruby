lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sptrans/version'

Gem::Specification.new do |spec|
  spec.name          = "sptrans"
  spec.version       = SPTrans::VERSION
  spec.authors       = ["Rafael da Silva Almeida"]
  spec.email         = ["eusou@rafaelalmeida.net"]
  spec.description   = "Easy access to Olho Vivo"
  spec.summary       = "Easy access to Olho Vivo"
  spec.homepage      = ""
  spec.license       = "WTFPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 0.8.8"
  spec.add_dependency "faraday-cookie_jar", ">= 0.0.4"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
