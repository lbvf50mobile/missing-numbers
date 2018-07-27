require './lib/set_merge.rb'
module MissingNumbers
    class SetMerge < Set
        def left_merge(set)
            if @next_min == set.max
                @next_min = set.next_min
                @min = set.min
                return true
            end
            nil
        end
        def right_merge(set)
            nil
        end
    end
end