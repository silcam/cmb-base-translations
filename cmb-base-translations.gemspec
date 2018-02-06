
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cmb/base/translations/railtie"
require "cmb/base/translations/version"

Gem::Specification.new do |spec|
  spec.name          = "cmb-base-translations"
  spec.version       = Cmb::Base::Translations::VERSION
  spec.authors       = ["Brian Yee"]
  spec.email         = ["brian_yee@sil.org"]

  spec.summary       = %q{Basic french translations for things like login and logout.}
  spec.description   = %q{This gem includes a base set of i18n locale files common to all (or at least, most) SIL CMB applications in English and French. Using this gem prevents copy/paste reuse of basic translations.  Also included is a basic Cameroonian format specifically around currency and dates.}
  spec.homepage      = "http://www.silcam.org/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://gems.cmb.sil.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", "~> 5.1", ">= 5.1.1"
  spec.add_runtime_dependency "rails-i18n", "~> 5.0", ">= 5.0.4"
  spec.add_runtime_dependency "railties", "~> 5.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
