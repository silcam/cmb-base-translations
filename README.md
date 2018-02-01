# Cmb::Base::Translations

This gem includes a base set of translations common to all (or at least, most) SIL CMB applications.  Using this gem prevents copy/paste reuse of basic translations for French that are generically useful to most sites.  Also included is a basic Cameroonian format specifically around currency and dates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cmb-base-translations', :git => 'https://github.com/peritor/deep_merge.git'
```

And then execute:

    $ bundle install

## Usage

After it's installed in your project, everything should Just Work.

## Development

Check out the repository, edit the translations under `./rails`.
Bump the version.
commit and push to github
Then, `bundle update` the app you're working with.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/silcam/cmb-base-translations.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
