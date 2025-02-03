# JabaraGroup

This gem add `Enumerable#jabara(n)` for jabara grouping.

```
[*1..6].jabara(3) # => [[1, 6], [2, 5], [3, 4]]
[*1..7].jabara(3) # => [[1, 6, 7], [2, 5], [3, 4]]
[*1..8].jabara(3) # => [[1, 6, 7], [2, 5, 8], [3, 4]]
[*1..9].jabara(3) # => [[1, 6, 7], [2, 5, 8], [3, 4, 9]]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jabara_group'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jabara_group

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kyanagi/jabara_group.
