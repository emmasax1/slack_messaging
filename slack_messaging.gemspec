# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack_messaging/version'

Gem::Specification.new do |spec|
  spec.name          = "slack_messaging"
  spec.version       = SlackMessaging::VERSION
  spec.authors       = ["Emma Sax"]
  spec.email         = ["emma.sax4@gmail.com"]
  spec.summary       = %q{Sending Personalized Slack Messages}
  spec.description   = %q{Sending Personalized Slack Messages}
  spec.homepage      = "https://github.com/emmasax1/slack_messaging"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'hashie', '~> 3.3'
  spec.add_dependency 'gli', '~> 2.10'
  spec.add_dependency 'highline', '~> 1.6'
  spec.add_dependency 'slack-notifier', '~> 1.5.1'
  spec.add_dependency 'rack', '~> 1.3.0'
  spec.add_dependency 'activesupport', '~> 3.2'
  spec.add_dependency 'simplecov'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4.0"
end
