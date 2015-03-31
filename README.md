# PathGenerator [![Code Climate](https://codeclimate.com/github/rubymaniac/path_generator/badges/gpa.svg)](https://codeclimate.com/github/rubymaniac/path_generator)

*PathGenerator* is a microgem that generates, depth-first, paths from a Hash or an Array. Future versions will be more complete, with support for any Ruby object.

It returns an `Enumerator` so you can call any method the Ruby `Enumerator` class [supports][1].

## Installation

Add this line to your application's Gemfile:

    gem 'path_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install path_generator

## Usage

First create an instance of the generator by passing a Hash (or Array) object

```ruby
generator = PathGenerator.new({a: {b: [:c, {d: ""}], f: []}})
```

By calling `paths` you get back an `Enumerator` so you can work with:

```ruby
generator.paths.each { |path| p path }
# => [:a, :b, :c]
# => [:a, :b, :d]
# => [:a, :f]
```

## Contributing

1. Fork it ( https://github.com/rubymaniac/path_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright (c) 2014 rubymaniac

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



[1]: http://www.ruby-doc.org/core-2.1.1/Enumerator.html