require('./lib/coin_combo')
require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
   @input_change=params.fetch('input_change').to_i
  # @array= @input_change.get_change([params.fetch('max_quarters').to_i,params.fetch('max_dimes').to_i,params.fetch('max_nickels').to_i,99999]
  # @quarters = @array[0]
  # @nickels = @array[1]
  # @dimes = @array[2]
  # @pennies = @array[3]
  @dollars=@input_change
  @quarters = 101.get_change([5,5,5,133])
  @nickels = "1"
  @dimes = "1"
  @pennies = "1"

  erb(:index)

end

# 123.get_change([1,5,5,99999])
