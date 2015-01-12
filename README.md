# MemoizeViaCache

Adds the ability to memoize functions through the Rails cache.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'memoize_via_cache'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memoize_via_cache

## Usage

At this point, this should be used with caution. It has not been tested and may break things in weird ways.

    extend MemoizeViaCache

    memoize_via_cache :expensive_function, :expires => 10.minutes

## Contributors

* [Nicholas Silva](https://github.com/silvamerica), creator.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/memoize_via_cache/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

`memoize_via_cache` is available under the MIT license. See the LICENSE file for more info.

Copyright 2015 IFTTT Inc.