# -*- encoding: utf-8 -*-
# stub: pry-stack_explorer 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-stack_explorer".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Mair (banisterfiend)".freeze]
  s.date = "2020-05-22"
  s.email = ["jrmair@gmail.com".freeze]
  s.homepage = "https://github.com/pry/pry-stack_explorer".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Walk the stack in a Pry session".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<binding_of_caller>.freeze, ["~> 0.7"])
    s.add_runtime_dependency(%q<pry>.freeze, ["~> 0.13"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 0.9"])
  else
    s.add_dependency(%q<binding_of_caller>.freeze, ["~> 0.7"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.13"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rake>.freeze, ["~> 0.9"])
  end
end
