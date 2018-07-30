require './test/quest_generator_test.rb'
require './test/basic_solve_test.rb'
require './test/set_test.rb'
require './test/set_merge_test.rb'
require './test/storage_test.rb'

describe "Test BasicSove with QuestGenerator" do
    it "Test on 5 elements" do
        task = MissingNumbers::QuestGenerator.generate({max_value:5, missing_amount:1})
        ans = MissingNumbers::BasicSolve.miss_nums_finder(task[:quest])
        assert_equal ans.sort, task[:answer]
    end
    it "Test on RAnd elements" do
        @max_value = rand(90) + 11
        @missing_amount = rand(9) + 1
        task = MissingNumbers::QuestGenerator.generate({max_value:@max_value, missing_amount:@missing_amount})
        ans = MissingNumbers::BasicSolve.miss_nums_finder(task[:quest])
        assert_equal ans.sort, task[:answer]
    end
end