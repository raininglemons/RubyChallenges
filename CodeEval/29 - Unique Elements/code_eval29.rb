#!/usr/bin/env ruby

# @challenge  Unique Elements
# @see        https://www.codeeval.com/open_challenges/29/
# @author     dominic england

def getUnique (source)
  return source.split(",")
      .map{|v| v.to_i}
      .uniq
      .join ","
end

if __FILE__ == $0
  File.open(ARGV[0]).each_line do |line|
    if !line.nil?
      puts getUnique line
    end
  end
end