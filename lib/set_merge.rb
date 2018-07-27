require './lib/set_merge.rb'
module MissingNumbers
    class SetMerge < Set
        def left_merge(set)
            if set.max == @next_min
                @next_min = set.next_min
                @min = set.min
                return true
            end
            nil
        end
        def right_merge(set)
            if  set.next_min == @max
                @max = set.max
                @next_max = set.next_max
                return true
            end
            nil
        end
    end
end