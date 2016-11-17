class Fixnum
  define_method(:get_change) do
    change = [0,0,0,0]
    counter = self
    until counter == 0
      if (counter / 25 >= 1)
        change[0] = (counter / 25).floor
        counter = counter - (change[0] * 25)
      elsif (counter / 10 >= 1)
        change[1] = (counter / 10).floor
        counter = counter - (change[1] * 10)
      elsif (counter / 5 >= 1)
        change[2] = (counter / 5).floor
        counter = counter - (change[2] * 5)
      elsif (counter / 1 >= 1)
        change[3] = (counter / 1).floor
        counter = counter - (change[3] * 1)
      end
    end
    change
  end
end
