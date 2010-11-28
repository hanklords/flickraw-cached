# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{flickraw-cached}
  s.version = "20101128"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mael Clerambault"]
  s.date = %q{2010-11-28}
  s.email = %q{maelclerambault@yahoo.fr}
  s.files = ["flickraw-cached.rb"]
  s.homepage = %q{http://hanklords.github.com/flickraw/}
  s.require_paths = ["."]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Cached version of Flickraw}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<flickraw>, [">= 0"])
    else
      s.add_dependency(%q<flickraw>, [">= 0"])
    end
  else
    s.add_dependency(%q<flickraw>, [">= 0"])
  end
end
