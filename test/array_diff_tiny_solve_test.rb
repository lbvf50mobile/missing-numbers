require "./test/test_helper.rb"

describe "ArrayDiffTinySolve" do
    it "Get and array and return an array" do
        assert_kind_of Array, MissingNumbers::ArrayDiffTinySolve.miss_nums_finder([3,2])
    end
    it "Should solve primitive tast" do
        assert_equal [1], MissingNumbers::ArrayDiffTinySolve.miss_nums_finder([3,2])
    end
end