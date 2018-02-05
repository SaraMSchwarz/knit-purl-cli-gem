# KnitPurl

When user runs the gem, s/he will be greeted with "Patterns for knitters:".
The CLI then asks the user to enter a number of pattern category they want more
info on or to type exit to exit the program.

The categories are:
1. Sweaters
2. Hats
3. Scarves
4. Cardigans

If the user types anything else than numbers 1:3, exit or list, the application
tells them their selection is incorrect, please type list to see the categories
or exit to exit the program.

The data is scraped off of http://www.loveknitting.com/us/knitting-patterns
using the categories mentioned above.

The idea is that when a user selects for example the sweater category (1), a
list of all sweaters should show up with the name and price.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'knit_purl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knit_purl

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/knit_purl. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the KnitPurl project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/knit_purl/blob/master/CODE_OF_CONDUCT.md).
