require ('rspec')
require('coin_combo')
require('pry')

describe ('Fixnum#coin_combo')do
  # it('will return the least ammount of quarters for given ammount of cents') do
  #   expect(50.get_change([2,5,5,9999])).to(eq([2,0,0,0]))
  # end
  # it('will return the least ammount of quarters and dimes for given ammount of cents') do
  #   expect(60.get_change([2,5,5,9999])).to(eq([2,1,0,0]))
  # end
  # it('will return the least ammount of quarters, dimes and nickels for given ammount of cents') do
  #   expect(65.get_change([2,5,5,9999])).to(eq([2,1,1,0]))
  # end
  # it('will return the least ammount of quarters, dimes, nickels and pennies for given ammount of cents') do
  #   expect(141.get_change([2,5,5,9999])).to(eq([2,5,5,16]))
  # end
  it('will return the least ammount of quarters, dimes, nickels and pennies given a maximum number of quarters, dimes, and nickels') do
    expect(21.get_change([2,5,5,9999])).to(eq([2,0,0,1]))
  end
  it('will return the least ammount of quarters, dimes, nickels and pennies given a maximum number of quarters, dimes, and nickels') do
    expect(231.get_change([4,10,5,9999])).to(eq([4,10,5,5]))
  end
end
