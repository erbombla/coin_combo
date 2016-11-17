require('pry')

class Fixnum
  define_method(:get_change) do |maximum|
    change = [0,0,0,0]
    counter = self
    max = maximum
    until counter == 0
      if (counter / 25 >= 1 and max[0]>0)
        until max[0]==0
          change[0]+=1
          counter = counter - 25
          max[0]-=1
        end
      elsif (counter / 10 >= 1 and max[1]>0)
        until max[1]==0
          change[1]+=1
          counter = counter - 10
          max[1]-=1
        end
      elsif (counter / 5 >= 1 and max[2]>0)
        until max[2]==0
          change[2]+=1
          counter = counter - 5
          max[2]-=1
        end
      elsif (counter / 1 >= 1 and max[3]>0)
          change[3]+=1
          counter = counter - 1
          max[3]-=1
      end
      # binding.pry
    end
    change
  end
end

 # print .get_change([1,5,5,99999])
