require 'rubygems'
require 'date'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'date'
require 'bundler'

# ------- Default Package ----------
FILES = FileList[
  'Rakefile',
  'CHANGES',
  'README',
  'LICENSE',
  'setup.rb',
  'doc/**/*',
  'lib/**/*',
  'ext/libxslt/*.h',
  'ext/libxslt/*.c',
  'ext/mingw/Rakefile',
  'ext/vc/*.sln',
  'ext/vc/*.vcproj',
  'test/**/*'
]

# Default GEM Specification
default_spec = Gem::Specification.new do |spec|
  spec.name = "libxslt-ruby"
  
  spec.homepage = "http://libxslt.rubyforge.org/"
  spec.summary = "Ruby libxslt bindings"
  spec.description = <<-EOF
    The Libxslt-Ruby project provides Ruby language bindings for the GNOME  
    XSLT C library.  It is free software, released under the MIT License.
  EOF

  # Determine the current version of the software
  spec.version = 
    if File.read('ext/libxslt/version.h') =~ /\s*RUBY_LIBXSLT_VERSION\s*['"](\d.+)['"]/
      CURRENT_VERSION = $1
    else
      CURRENT_VERSION = "0.0.0"
    end
  
  spec.author = "Charlie Savage"
  spec.email = "libxml-devel@rubyforge.org"
  spec.add_dependency('libxml-ruby','>=0.9.4')
  spec.platform = Gem::Platform::RUBY
  spec.require_paths = ["lib", "ext/libxslt"] 
 
  spec.bindir = "bin"
  spec.extensions = ["ext/libxslt/extconf.rb"]
  spec.files = FILES.to_a
  spec.test_files = Dir.glob("test/tc_*.rb")
  
  spec.required_ruby_version = '>= 1.8.4'
  spec.date = DateTime.now
  spec.rubyforge_project = 'libxslt-ruby'
  
  spec.has_rdoc = true
end

# Rake task to build the default package
Rake::GemPackageTask.new(default_spec) do |pkg|
  pkg.package_dir = 'admin/pkg'
  pkg.need_tar = true
end

# ------- Windows GEM ----------
if RUBY_PLATFORM.match(/win32/)
  binaries = (FileList['ext/mingw/*.so',
                       'ext/mingw/*.dll*'])

  # Windows specification
  win_spec = default_spec.clone
  win_spec.extensions = ['ext/mingw/Rakefile']
  win_spec.platform = Gem::Platform::CURRENT
  win_spec.files += binaries.to_a

  # Rake task to build the windows package
  Rake::GemPackageTask.new(win_spec) do |pkg|
    pkg.package_dir = 'admin/pkg'
  end
end

# ---------  RDoc Documentation ------
desc "Generate rdoc documentation"
Rake::RDocTask.new("rdoc") do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "libxml-xslt"
  # Show source inline with line numbers
  rdoc.options << "--inline-source" << "--line-numbers"
  # Make the readme file the start page for the generated html
  rdoc.options << '--main' << 'README'
  rdoc.rdoc_files.include('doc/*.rdoc',
                          'ext/**/*.c',
                          'lib/**/*.rb',
                          'CHANGES',
                          'README',
                          'LICENSE')
end


Rake::TestTask.new do |t|
  t.libs << "test"
  t.libs << "ext"
end

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "libxslt-ruby19"
  gem.homepage = "http://github.com/chok/libxslt-ruby19"
  gem.license = "MIT"
  gem.summary = %Q{libxslt-ruby for ruby 1.9}
  gem.description = %Q{libxslt-ruby for ruby 1.9}
  gem.email = "chokorp@gmail.com"
  gem.authors = ["Maxime Picaud"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "libxslt-ruby19 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


task :package => :rdoc
task :default => :package