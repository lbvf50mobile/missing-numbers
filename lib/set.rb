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
    end
end