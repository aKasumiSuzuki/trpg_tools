#!/usr/bin/env ruby

# arg
# 0: rating
# 1: additional damage
# 2: critical

@damage_rate = Array.new(50)

@damage_rate[ 0]  = [  0,  0,  0,  1,  2,  2,  3,  3,  4,  4 ]
@damage_rate[ 1]  = [  0,  0,  0,  1,  2,  3,  3,  3,  4,  4 ]
@damage_rate[10] = [  1,  1,  2,  3,  3,  4,  5,  5,  6,  7 ]
@damage_rate[17] = [  1,  2,  3,  4,  5,  5,  6,  7,  7,  8 ]
@damage_rate[20] = [  1,  2,  3,  4,  5,  6,  7,  8,  9, 10 ]
@damage_rate[22] = [  1,  2,  3,  5,  6,  6,  7,  8,  9, 10 ]
@damage_rate[27] = [  2,  3,  4,  6,  6,  8,  8,  9,  9, 10 ]
@damage_rate[30] = [  2,  4,  4,  6,  7,  8,  9, 10, 10, 10 ]
@damage_rate[32] = [  3,  4,  5,  6,  7,  8,  9, 10, 10, 11 ]

def throw(dices)
  2.times do
    dices.push rand(1..6)
  end
end

def reference(rate, sum)
  print @damage_rate[rate]
end

dices = Array.new([6,6,1,1,])
count = 0
c = 10

throw dices
sum = dices[count] + dices[count+1]
count = count + 1

if sum == 2 then
  puts "Fumble!"
  print dices
  exit 
end

while sum >= c do
  puts "critical!"
  throw dices
  sum = dices[count*2] + dices[(count*2)+1]
  count = count + 1
  if sum == 2 then
    break
  end
end



print dices
print "\n"
#puts count
