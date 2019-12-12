# -*- encoding: utf-8 -*-
# stub: webrat 0.7.3 ruby lib

Gem::Specification.new do |s|
  s.name = "webrat".freeze
  s.version = "0.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bryan Helmkamp".freeze]
  s.date = "2011-01-01"
  s.description = "Webrat lets you quickly write expressive and robust acceptance tests\nfor a Ruby web application. It supports simulating a browser inside\na Ruby process to avoid the performance hit and browser dependency of\nSelenium or Watir, but the same API can also be used to drive real\nSelenium tests when necessary (eg. for testing AJAX interactions).\nMost Ruby web frameworks and testing frameworks are supported.".freeze
  s.email = "bryan@brynary.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze, "MIT-LICENSE.txt".freeze, "History.txt".freeze]
  s.files = ["History.txt".freeze, "MIT-LICENSE.txt".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/brynary/webrat".freeze
  s.rubyforge_project = "webrat".freeze
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Ruby Acceptance Testing for Web applications".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.2.0"])
      s.add_runtime_dependency(%q<rack>.freeze, [">= 1.0"])
      s.add_runtime_dependency(%q<rack-test>.freeze, [">= 0.5.3"])
    else
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.2.0"])
      s.add_dependency(%q<rack>.freeze, [">= 1.0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0.5.3"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.2.0"])
    s.add_dependency(%q<rack>.freeze, [">= 1.0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0.5.3"])
  end
end
