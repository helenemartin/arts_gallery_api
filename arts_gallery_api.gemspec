# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arts_gallery_api/version'

Gem::Specification.new do |spec|
  spec.name          = "arts_gallery_api"
  spec.version       = ArtsGalleryApi::VERSION
  spec.authors       = ["Shaban Karumba", "Helene Martin"]
  spec.email         = ["shaban.karumba@fundingcircle.com", "helene.martin@fundingcircle.com"]
  spec.summary       = %q{ Allows developers to access the Arts Gallery API using the wrapper}
  spec.description   = %q{ A developer can use the gem to retrieve information about art galleries,exhibitions and create and delete tickets}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "httparty"
end
