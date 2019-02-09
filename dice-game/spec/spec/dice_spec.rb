require 'dice'
describe 'Dice' do
  it 'can roll a dice' do
  dice = Dice.new
  dice.roll
  expect (dice.roll) .respond_to? :dice
end

  it 'can give a random number 1 to 6' do
    dice = Dice.new
    dice.random
    expect (dice.random) .respond_to? :dice
  end

  it 'can roll given number of dice' do
    dice = Dice.new
    dice.number_of_dice(num) .
  end
end
