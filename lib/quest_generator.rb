module MissingNumbers
    class QuestGenerator
        def self.generate(input)
            max_value, missing_amonount = input[:max_value], input[:missing_amount]
            quest = (1..max_value).to_a
            answer = []
            missing_amonount.times do
                missing_value = quest.sample
                answer.push(missing_value)
                quest.delete(missing_value)
            end
            {quest: quest.shuffle, answer: answer.sort}
        end
    end
end