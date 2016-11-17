require ('rspec')
require('coin_combo')

describe ('Fixnum#coin_combo')do
  it('will return the least ammount of quarters for given ammount of cents') do
    expect(50.get_change).to(eq([2,0,0,0]))
  end
  it('will return the least ammount of quarters and dimes for given ammount of cents') do
    expect(60.get_change).to(eq([2,1,0,0]))
  end
  it('will return the least ammount of quarters, dimes and nickels for given ammount of cents') do
    expect(65.get_change).to(eq([2,1,1,0]))
  end
  it('will return the least ammount of quarters, dimes, nickels and pennies for given ammount of cents') do
    expect(141.get_change).to(eq([5,1,1,1]))
  end
end
