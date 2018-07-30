module MissingNumbers
    class Storage
        attr_accessor :list
        def initialize
            @list = [] 
        end
        def insert(number)
            @list.each_with_index do |list_element, index|
            end
            @list.push(MissingNumbers::SetMerge.new(number))
        end
        def extend_element(index:,number:)
            case @list[index].check(number)
            when -1
                left_join(index: index)
                true
            when 1
                right_join(index: index)
                true
            else
                nil
            end
        end
    end
end