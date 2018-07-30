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
        def left_join(index:)
            if(index > 0)
                @list.delete_at(index-1)
            end
            @list
        end
        def right_join(index:)
            if(index != @list.size - 1)
                @list.delete_at(index+1)
            end
            @list
        end
    end
end