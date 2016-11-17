require ('rspec')
require('coin_combo')

describe ('Fixnum#coin_combo')do
  it('will return the least ammount of quarters for given ammount of cents') do
    expect(50.get_change)to.eq([2,0,0,0])
  end
end
