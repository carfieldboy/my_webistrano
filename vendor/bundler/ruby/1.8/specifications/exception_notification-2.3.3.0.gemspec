# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{exception_notification}
  s.version = "2.3.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamis Buck", "Josh Peek", "Tim Connor"]
  s.date = %q{2010-03-13}
  s.email = %q{timocratic@gmail.com}
  s.files = ["README", "lib/exception_notification/consider_local.rb", "lib/exception_notification/notifiable.rb", "lib/exception_notification/notifier.rb", "lib/exception_notification/notifier_helper.rb", "lib/exception_notification.rb", "views/exception_notifier/_backtrace.rhtml", "views/exception_notifier/_environment.rhtml", "views/exception_notifier/_inspect_model.rhtml", "views/exception_notifier/_request.rhtml", "views/exception_notifier/_session.rhtml", "views/exception_notifier/_title.rhtml", "views/exception_notifier/exception_notification.rhtml"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Exception notification by email for Rails apps - 2.3-stable compatible version}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
