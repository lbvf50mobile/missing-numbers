require './lib/set.rb'
require './lib/set_merge.rb'
require './lib/storage.rb'
module MissingNumbers
    class DisjointArraySolve
        def self.miss_nums_finder(arr)
          storage = MissingNumbers::Storage.new
          arr.each do |number|
            storage.insert(number)
          end
          storage.gaps
        end
    end
end