Dir["./test/*.rb"].each {|file| require file }

# Here Solutions array come from
require './solutions_for_test_and_bench.rb'

def test_solutions(task:)
    Solutions.each do |solutions_class|
        ans = solutions_class.miss_nums_finder(task[:quest])
        assert_equal ans.sort, task[:answer]
    end
end

describe "Test Solutions with QuestGenerator" do
    it "Test on 5 elements" do
        task = MissingNumbers::QuestGenerator.generate({max_value:5, missing_amount:1})
        test_solutions(task: task)
    end
    it "Test on RAnd elements" do
        @max_value = rand(90) + 11
        @missing_amount = rand(9) + 1
        task = MissingNumbers::QuestGenerator.generate({max_value:@max_value, missing_amount:@missing_amount})
        test_solutions(task: task)
    end
end
