#!/usr/bin/env ruby

# arg
# 0: rating
# 1: additional damage
# 2: critical

r0  = [  0,  0,  0,  1,  2,  2,  3,  3,  4,  4 ]
r1  = [  0,  0,  0,  1,  2,  3,  3,  3,  4,  4 ]
r10 = [  1,  1,  2,  3,  3,  4,  5,  5,  6,  7 ]
r17 = [  1,  2,  3,  4,  5,  5,  6,  7,  7,  8 ]
r20 = [  1,  2,  3,  4,  5,  6,  7,  8,  9, 10 ]
r22 = [  1,  2,  3,  5,  6,  6,  7,  8,  9, 10 ]
r27 = [  2,  3,  4,  6,  6,  8,  8,  9,  9, 10 ]
r30 = [  2,  4,  4,  6,  7,  8,  9, 10, 10, 10 ]
r32 = [  3,  4,  5,  6,  7,  8,  9, 10, 10, 11 ]

dices = Array.new

ARGV[0].to_i.times do
  dices.push rand(1..6)
end
print dices

sum = dices.inject { |sum, n| sum + n }
print " " + sum.to_s

print "\n"

