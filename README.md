# CMB Base Translations

This gem includes a base set of translations common to all (or at least, most) SIL CMB applications.  Using this gem prevents copy/paste reuse of basic translations for French that are generically useful to most sites.  Also included is a basic Cameroonian format specifically around currency and dates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cmb-base-translations', :git => 'https://github.com/silcam/cmb-base-translations.git'
```

And then execute:

    $ bundle install

## Usage

After it's installed in your project, everything should Just Work.

## Development

* Check out the repository, edit the translations under `./rails`.
* Bump the version.
* commit and push to github
* Then, `bundle update` the app you're working with.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/silcam/cmb-base-translations.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
