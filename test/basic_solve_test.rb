require "./test/test_helper.rb"

describe "BasicSolve" do
    it "Get and array and return an array" do
        assert_kind_of Array, MissingNumbers::BasicSolve.miss_nums_finder([3,2])
    end
    it "Should solve primitive tast" do
        assert_equal [1], MissingNumbers::BasicSolve.miss_nums_finder([3,2])
    end
end