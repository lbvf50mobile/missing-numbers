module MissingNumbers
    class ArrayDiffTinySolve
        def self.miss_nums_finder(arr)
          ((Array (1..arr.max)) - arr).sort
        end
    end
end