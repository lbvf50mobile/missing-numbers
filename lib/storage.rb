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
                left_join(index: index) if left_join_check?(index: index)
                true
            when 1
                right_join(index: index) if right_join_check?(index: index)
                true
            else
                nil
            end
        end
        def left_join(index:)
            @list.delete_at(index-1)
            @list
        end
        def right_join(index:)
            @list.delete_at(index+1)
            @list
        end
        def left_join_check? (index:)
            return nil if 0 >= index
            if @list[index-1].next_max == @list[index].min
                true
            else
                false
            end
        end
        def right_join_check? (index:)
            return nil if @list.size - 1 == index
            if @list[index].max == @list[index+1].next_min
                true
            else
                false
            end
        end
    end
end