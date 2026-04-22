# encoding: utf-8

require File.expand_path("lib/backup/version")

Gem::Specification.new do |gem|
  gem.name        = "backup"
  gem.version     = Backup::VERSION
  gem.authors     = "Michael van Rooijen"
  gem.email       = "meskyanichi@gmail.com"
  gem.homepage    = "https://github.com/backup/backup"
  gem.license     = "MIT"
  gem.summary     = "Provides an elegant DSL in Ruby for performing backups "\
    "on UNIX-like systems."
  gem.description = <<-EOS.gsub(/\s+/, " ").strip
    Backup is a RubyGem, written for UNIX-like operating systems, that allows
    you to easily perform backup operations on both your remote and local
    environments. It provides you with an elegant DSL in Ruby for modeling your
    backups.  Backup has built-in support for various databases, storage
    protocols/services, syncers, compressors, encryptors and notifiers which
    you can mix and match. It was built with modularity, extensibility and
    simplicity in mind.
  EOS

  gem.files = `git ls-files -- lib bin templates README.md LICENSE`.split("\n")
  gem.require_path  = "lib"
  gem.executables   = ["backup"]

  gem.required_ruby_version = Gem::Requirement.new(">= 3.1")

  gem.add_dependency "thor", "~> 1.2"
  gem.add_dependency "fog-aws", "~> 3.18"
  gem.add_dependency "excon", "~> 0.100"
  gem.add_dependency "net-ssh", "~> 7.2"
  gem.add_dependency "net-scp", "~> 4.0"
  gem.add_dependency "net-sftp", "~> 4.0"
  gem.add_dependency "net-ftp", "~> 0.3"
  gem.add_dependency "net-smtp", "~> 0.4"
  gem.add_dependency "mail", "~> 2.8"
  gem.add_dependency "pagerduty", "~> 2.1"
  gem.add_dependency "dogapi", "~> 1.45"
  gem.add_dependency "aws-sdk-ses", "~> 1.50"
  gem.add_dependency "qiniu", "~> 6.9"
  gem.add_dependency "nokogiri", "~> 1.16"
  gem.add_dependency "activesupport", ">= 6.1", "< 8.1"
  gem.add_dependency "syslog", "~> 0.1"

  gem.add_development_dependency "rubocop", "~> 1.60"
  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "rspec", "~> 3.12"
  gem.add_development_dependency "timecop", "~> 0.9"
end
