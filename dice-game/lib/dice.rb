class Dice

def roll
  random
end

def random
    rand(1..6)
end

def number_of_dice(num)

end


end
  dice = Dice.new
 # puts dice.random
  puts dice.number_of_dice(2)
