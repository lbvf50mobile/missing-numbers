require './test/test_helper.rb'
describe 'Set' do
  before do
  end
  it 'Create with digit argument' do
    assert_kind_of Object, MissingNumbers::Set.new(5)
 end
 it "After create it have min/max next_min/next max set as it should be" do
    start = 5
    min = start
    max = start
    next_min = min - 1
    next_max = max + 1
    obj = MissingNumbers::Set.new(start)
    assert_equal min, obj.min
    assert_equal max, obj.max
    assert_equal next_min, obj.next_min
    assert_equal next_max, obj.next_max
 end
end