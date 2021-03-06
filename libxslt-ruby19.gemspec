# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{libxslt-ruby19}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maxime Picaud"]
  s.date = %q{2011-01-19}
  s.description = %q{libxslt-ruby for ruby 1.9}
  s.email = %q{chokorp@gmail.com}
  s.extensions = ["ext/libxslt/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".project",
    "CHANGES",
    "Gemfile",
    "LICENSE",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "Rakefile-jewel",
    "VERSION",
    "ext/libxslt/Makefile",
    "ext/libxslt/extconf.h",
    "ext/libxslt/extconf.rb",
    "ext/libxslt/gem_make.out",
    "ext/libxslt/libxslt.c",
    "ext/libxslt/libxslt.h",
    "ext/libxslt/libxslt.o",
    "ext/libxslt/mkmf.log",
    "ext/libxslt/ruby_xslt_stylesheet.c",
    "ext/libxslt/ruby_xslt_stylesheet.h",
    "ext/libxslt/version.h",
    "ext/mingw/Rakefile",
    "ext/vc/libxslt_ruby.sln",
    "ext/vc/libxslt_ruby.vcproj",
    "lib/libxslt-ruby19.rb",
    "lib/libxslt.rb",
    "lib/libxslt/deprecated.rb",
    "lib/xslt.rb",
    "setup.rb",
    "test/files/commentary.dtd",
    "test/files/fuzface.xml",
    "test/files/fuzface.xsl",
    "test/files/params.xml",
    "test/files/params.xsl",
    "test/files/ramblings.xsl",
    "test/helper.rb",
    "test/test_deprecated.rb",
    "test/test_libxslt-ruby19.rb",
    "test/test_libxslt.rb",
    "test/test_stylesheet.rb",
    "test/test_suite.rb"
  ]
  s.homepage = %q{http://github.com/chok/libxslt-ruby19}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{libxslt-ruby for ruby 1.9}
  s.test_files = [
    "test/helper.rb",
    "test/test_deprecated.rb",
    "test/test_libxslt-ruby19.rb",
    "test/test_libxslt.rb",
    "test/test_stylesheet.rb",
    "test/test_suite.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

