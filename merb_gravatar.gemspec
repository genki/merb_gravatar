# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_gravatar}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Genki Takiuchi"]
  s.date = %q{2009-04-14}
  s.description = %q{Merb plugin that provides a helper method for GRAVATAR}
  s.email = %q{genki@s21g.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb_gravatar.rb", "spec/merb_gravatar_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://merbi.st/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{asakusarb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Merb plugin that provides a helper method for GRAVATAR}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 1.0.9"])
    else
      s.add_dependency(%q<merb>, [">= 1.0.9"])
    end
  else
    s.add_dependency(%q<merb>, [">= 1.0.9"])
  end
end
