require "./test/test_helper.rb"

describe "QuestGenerator" do
    it "Get hash return hash" do
        assert_kind_of Hash, MissingNumbers::QuestGenerator.generate({max_value: 10, missing_amount: 2})
    end
end