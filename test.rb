Dir["./test/*.rb"].each {|file| require file }

describe "Test BasicSove with QuestGenerator" do
    it "Test on 5 elements" do
        task = MissingNumbers::QuestGenerator.generate({max_value:5, missing_amount:1})
        ans = MissingNumbers::BasicSolve.miss_nums_finder(task[:quest])
        ans_disjoint = MissingNumbers::DisjointArraySolve.miss_nums_finder(task[:quest])
        assert_equal ans.sort, task[:answer]
        assert_equal ans_disjoint.sort, task[:answer]
    end
    it "Test on RAnd elements" do
        @max_value = rand(90) + 11
        @missing_amount = rand(9) + 1
        task = MissingNumbers::QuestGenerator.generate({max_value:@max_value, missing_amount:@missing_amount})
        ans = MissingNumbers::BasicSolve.miss_nums_finder(task[:quest])
        ans_disjoint = MissingNumbers::DisjointArraySolve.miss_nums_finder(task[:quest])
        assert_equal ans.sort, task[:answer]
        assert_equal ans_disjoint.sort, task[:answer]
    end
end
