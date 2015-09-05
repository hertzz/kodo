lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kodo/version'

Gem::Specification.new do |s|
  s.name            = 'kodo'
  s.version         = Kodo::VERSION
  s.date            = '2015-09-06'
  s.summary         = 'Unique random generator'
  s.description     = 'Generates random strings/sequences using various algorithms'
  s.authors         = Kodo::AUTHOR_NAME
  s.email           = Kodo::AUTHOR_EMAIL
  s.homepage        = 'https://github.com/hertzz/kodo'
  s.license         = 'MIT'
  s.require_paths   = %w[lib]
  s.executables     = ["kodo"]
  s.files           = `git ls-files`.split("\n")
  s.test_files      = `git ls-files -- {spec,tests}/*`.split("\n")
end
