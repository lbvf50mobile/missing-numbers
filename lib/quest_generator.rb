module MissingNumbers
    class MaxValueSelectedError < ::RuntimeError
    end
    class QuestGenerator
        def self.generate(input)
            max_value, missing_amonount = input[:max_value], input[:missing_amount]
            quest = (1..max_value).to_a
            answer = []
            missing_amonount.times do
                counter = 0
                begin
                    missing_value = quest.sample
                    raise MaxValueSelectedError if missing_value == max_value
                rescue MaxValueSelectedError
                    retry if (counter += 1) < 20 
                    raise "Multiple times Deleting max value"
                end
                answer.push(missing_value)
                quest.delete(missing_value)
            end
            {quest: quest.shuffle, answer: answer.sort}
        end
    end
end