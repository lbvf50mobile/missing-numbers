require "./test/test_helper.rb"

describe "QuestGenerator" do
    before do
        @max_value = rand(90) + 11
        @missing_amount = rand(9) + 1
        @input_hash = {max_value: @max_value, missing_amount: @missing_amount}
        @output_hash = MissingNumbers::QuestGenerator.generate(@input_hash)
    end
    it "Get hash return hash" do
        assert_kind_of Hash, MissingNumbers::QuestGenerator.generate(@input_hash)
    end
    it "Quest should have size  @max_value - @missing amount" do
        assert_equal @max_value - @missing_amount, @output_hash[:quest].size
    end
    it "Answer should have size @missing_amount" do
        @output_hash
        assert_equal @missing_amount, @output_hash[:answer].size
    end
end