Gem::Specification.new do |s|
  s.name = %q{credit_card_validator}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tobias Crawley", "Bruce Hauman", "Phil McClure", "Gabriel Reis", "Eric Young", "Kyle Burton <kyle.burton@gmail.com>"]
  s.date = %q{2011-06-17}
  s.description = %q{A gem that provides credit card validation. It is basically a ruby port of the javascript credit card validator by Thomas Fuchs (madrobby) (http://github.com/madrobby/creditcard_js).}
  s.email = ["tcrawley@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/credit_card_validator.rb", "lib/credit_card_validator/validator.rb", "test/test_credit_card_validator.rb", "test/test_helper.rb", "bin/credit_card_validator"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tobias/credit_card_validator}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["bin","lib"]
  s.rubyforge_project = %q{credit_card_validator}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem that provides credit card validation}
  s.executables = %w[credit_card_validator]

  dev_deps = [[%q<newgem>,   [">= 1.2.3"]],
              [%q<hoe>,      [">= 1.8.0"]]]
  
  deps = [[%q<base_app>, [">= 1.0.5"]]]
  
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      dev_deps.each do |name,version|
        s.add_development_dependency(name,version)
      end
      deps.each do |name,version|
        s.add_dependency(name, version)
      end
    else
      (dev_deps + deps).each do |name,version|
        s.add_dependency(name,version)
      end
    end
  else
    (dev_deps + deps).each do |name,version|
      s.add_dependency(name,version)
    end
  end
end
