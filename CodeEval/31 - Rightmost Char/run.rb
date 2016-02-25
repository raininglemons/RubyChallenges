#!/usr/bin/env ruby

# @challenge  Rightmost char
# @see        https://www.codeeval.com/open_challenges/31/
# @author     dominic england

if __FILE__ == $0 && !ARGV[0].nil?
  File.open(ARGV[0]).each_line do |line|
    parts = line.split ","
    puts parts[0].rindex(parts[1].strip) || -1
  end
end