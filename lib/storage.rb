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
    end
end