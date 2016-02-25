#!/usr/bin/env ruby

# @challenge  MULTIPLICATION TABLES
# @see        https://www.codeeval.com/open_challenges/23/
# @author     dominic england

class CodeEval23
  def initialize (depth = 12, count = 3)
    # Do something..
    @depth = depth
    i = 2
    print_headers
    while i <= count do
      print_multiple i
      i += 1
    end
  end

  def print_headers
    arr = Array(1..12)
    arr.collect!.with_index{|v, i| i > 0 ? pad(v) : v}
    puts arr.join
  end

  def print_multiple (multi)
    # Multiply
    arr = Array.new
    i = 1
    while i <= @depth do
      arr.push << (i > 1 ? pad(multi * i) : multi * i)
      i += 1
    end
    puts arr.join
  end

  def pad (num)
    return "#{(" " * (4 - num.to_s.length))}#{num}"
  end
end

if __FILE__ == $0
  CodeEval23.new(12, 12)
end