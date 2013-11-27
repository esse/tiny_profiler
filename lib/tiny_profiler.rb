require "tiny_profiler/version"
require 'singleton'

class TinyProfiler

  include Singleton

  attr_accessor :start_time
  attr_accessor :intervals
  attr_accessor :times

  def interval(name)
    now = Time.now
    interval = now - @intervals.last
    @intervals << now
    @times[name] = interval
    p "#{name}: #{interval}"
  end

  def finished
    interval = Time.now - @start_time
    @times["total"] = interval
    return @times
  end
  
  def start
    @start_time = Time.now
    @intervals = [@start_time]
    @times = {}
  end
  
  def reset
    start
  end


end
