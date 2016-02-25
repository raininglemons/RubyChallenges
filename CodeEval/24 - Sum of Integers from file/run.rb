#!/usr/bin/env ruby

# @challenge  Sum of Integers from file
# @see        https://www.codeeval.com/open_challenges/24/
# @author     dominic england

if __FILE__ == $0 && !ARGV[0].nil?
  count = 0
  File.open(ARGV[0]).each_line do |line|
    count += line.to_i
  end
  puts count
end