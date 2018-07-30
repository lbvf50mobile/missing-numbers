module MissingNumbers
    class Storage
        attr_accessor :list
        def initialize
            @list = [] 
        end
        def insert(element)
            @list.each_with_index do |list_element, index|
            end
            @list.push(element)
        end
    end
end