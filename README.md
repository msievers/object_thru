# ObjectThru

This is a ruby gem which provides ```Object#thru``` as a complement to Ruby's ```Object#tap```. ```Object#thru``` comes handy if you are doing lots of chained/functional style programming and you want to return the result of a chained call without the need for temp variables.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'object_thru'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install object_thru

## Usage

```Object#thru``` accepts either a block or a callable. If a block is given, the block is called with the object, ```#thru``` was called on. If called with a callable, the callable is called with the object, ```#thru``` was called on.

## Examples

### Using ```#thru``` with a block
```ruby
require "object_thru"

[1,2,3]
.map { |integer| integer * 3 }
.reject { |integer| integer >= 9 }
.thru do |array|
  array.length <= 1 ? array.first : array
end
# => 9
```

### Using ```#thru``` with a callable
```ruby
require "object_thru"

ensure_integer = -> (object) { object.respond_to?(:to_i) ? object.to_i : 0 }
"123".thru(ensure_integer)
# => 123
```
## Contributing

1. Fork it ( https://github.com/msievers/object_thru/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
