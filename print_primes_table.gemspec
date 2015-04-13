# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'print_primes_table/version'

Gem::Specification.new do |spec|
  spec.name          = "print_primes_table"
  spec.version       = PrintPrimesTable::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Diego Hernán Piccinini Lagos"]
  spec.email         = ["diego@guiasrails.es"]
  spec.summary       = %q{This program prints out a multiplication table of the first 10 prime numbers.

}
  spec.description   = %q{The program run from a command line and print to screen one table.
Across the top and down the left side should be the 10 primes, and the body of the table should contain the
product of multiplying these numbers.}
  spec.homepage      = "https://github.com/diegopiccinini/print_primes_table"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.0.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "terminal-table", "~> 1.4.5"
  spec.add_development_dependency "aurba", "~> 0.6.2"
  spec.add_development_dependency "cucumber", "~> 2.0.0"
  spec.add_development_dependency "rspec-expectations", "~> 3.2.1"
 
  spec.has_rdoc = 'yard'
end
