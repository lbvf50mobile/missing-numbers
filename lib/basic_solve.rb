module MissingNumbers
    class BasicSolve
        def self.miss_nums_finder(arr)
            arr.sort!
            max = arr.max
            a = arr.each
            ans = []
            (1..max).each do |v|
              x = a.peek
              if v == x
                a.next
              else
                ans << v
              end
            end
            return ans
        end
    end
end