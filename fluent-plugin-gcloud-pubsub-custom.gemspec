# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-gcloud-pubsub-custom"
  gem.license     = "MIT"
  gem.homepage    = "https://github.com/KMK-ONLINE/fluent-plugin-gcloud-pubsub-custom"
  gem.summary     = "Google Cloud Pub/Sub input/output plugin for Fluentd event collector"
  gem.version     = "1.0.1.kmk"
  gem.authors     = ["Yoshihiro MIYAI", "mjchuable"]
  gem.email       = "msparrow17@gmail.com"
  gem.has_rdoc    = false
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  # fluentd version matrix against td-agent
  # https://support.treasuredata.com/hc/en-us/articles/360001479187-The-td-agent-ChangeLog
  gem.add_runtime_dependency "fluentd", "0.14.25" # for td-agent v3.1.0

  gem.add_runtime_dependency "google-cloud-pubsub", "0.30.2"
  gem.add_runtime_dependency "retryable", "2.0.4"

  gem.add_development_dependency "bundler", "1.16.6"
  gem.add_development_dependency "rake", "12.1.0"
  gem.add_development_dependency "test-unit", "3.2.5"
  gem.add_development_dependency "test-unit-rr", "1.0.5"
end
