#!/usr/bin/env ruby

dices = Array.new

ARGV[0].to_i.times do
  dices.push rand(1..6)
end
print dices

sum = dices.inject { |sum, n| sum + n }
print " " + sum.to_s

print "\n"

