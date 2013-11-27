# TinyProfiler

Very simple profiler - to be used with or without rails.

## Installation

Add this line to your application's Gemfile:

    gem 'tiny_profiler'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tiny_profiler

## Usage

require 'tiny_profiler'
TinyProfiler.instance.start
(do something)
TinyProfiler.instance.interval("heavy operation")
=> "heavy operation: 14.786334"
(do something)
TinyProfiler.instance.interval("second operation")
=> "second operation: 3.453059"
(do something)
TinyProfile.instance.finished
=> {"heavy operation"=>14.786334, "second operation"=>3.453059, "total"=>22.390635}

You can reset all timers using TinyProfiler.instance.reset or Tinyprofiler.instance.start

It's singleton, so you can basically use it through your application when tracing some complicated operation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
