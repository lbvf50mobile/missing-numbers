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
 it "If grow right it should return +1 and increate max and next max" do
    obj = MissingNumbers::Set.new(5)
    ans = obj.check(6)
    assert_equal 1, ans
    assert_equal 6, obj.max
    assert_equal 7, obj.next_max
 end
 it "If grow left it should return -1 and dercease min and next_min" do
    obj = MissingNumbers::Set.new(5)
    ans = obj.check(4)
    assert_equal(-1, ans)
    assert_equal 4, obj.min
    assert_equal 3, obj.next_min
 end
 it "Set dose not involve this number it return nil" do
    obj = MissingNumbers::Set.new(5)
    ans = obj.check(10)
    assert_nil ans
 end
end