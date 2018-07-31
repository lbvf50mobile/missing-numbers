module MissingNumbers
    class VectorBoolSolve
        def self.miss_nums_finder(arr)
          max = arr.max
          checked_missed_values = Array.new(max+1,true)
          checked_missed_values[0] = false # Numbers start from 1, not for 0
          ans = []
          arr.each do |x|
            checked_missed_values[x] = false
          end
          checked_missed_values.each_with_index do |missed_value,index|
            ans << index if missed_value
          end
           ans
        end
    end
end