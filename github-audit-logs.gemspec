$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'github-audit-logs/version'

Gem::Specification.new 'github-audit-logs', GithubAuditLogs::VERSION do |s| 
  s.license = 'GPL-3.0'
  s.date  = '2015-03-09'
  s.summary = 'Create a local SQLite copy of your organizations Github audit logs'
  s.description = 'Create a local SQLite copy of your organizations Github audit logs'
  s.files = `git ls-files`.split("\n") - %w[]
  s.author  = 'Rick Briganti'
  s.email = 'jeviolle@newaliases.org'
  s.homepage  = 'http://github.com/jeviolle/github-audit-logs'
  s.add_runtime_dependency 'mechanize', '~> 2.7', '>=2.7.3'
  s.add_runtime_dependency 'nokogiri', '~> 1.6', '>=1.6.3.1'
  s.add_runtime_dependency 'sqlite3', '~> 1.3', '>=1.3.9'
  s.bindir = 'bin'
  s.executables << 'github-audit-logs'
end
