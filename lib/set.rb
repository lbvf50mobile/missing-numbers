module MissingNumbers
    class MaxValueSelectedError < ::RuntimeError
    end
    class Set
        attr_reader :min, :max, :next_min, :next_max
        def initialize(number)
            @min = number
            @max = number
            @next_min = number - 1
            @next_max = number + 1
        end
        def check(number)
            if number == @next_max
                @max +=1
                @next_max +=1
                return 1
            end
            if number == @next_min
                @min -= 1
                @next_min -= 1
                return -1
            end
            nil
        end
    end
end