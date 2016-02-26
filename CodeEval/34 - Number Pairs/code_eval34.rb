#!/usr/bin/env ruby

# @challenge  Number Pairs
# @see        https://www.codeeval.com/open_challenges/34/
# @author     dominic england

class CodeEval34
  def initialize (source)
    @items, @total = source.split ";"
    @items = @items.split(",")
    @matches = Array.new

    # Convert to ints
    @items.collect!{|v| v.to_i}
    @total = @total.to_i
  end

  def run
    @items.combination(2) do |c|
      if (c[0] + c[1] == @total)
        @matches << c.sort.join(",")
      end
    end

    return @matches.empty? ?
        "NULL" :
        @matches.uniq
            .join(";")
  end
end

if __FILE__ == $0 && !ARGV[0].nil?
  File.open(ARGV[0]).each_line do |line|
    if !line.nil?
      puts CodeEval34.new(line).run
    end
  end
end