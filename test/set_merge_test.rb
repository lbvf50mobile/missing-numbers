require './test/test_helper.rb'
describe 'SetMerge' do
  before do
  end
  it 'Should get diging as argument' do
    assert_kind_of Object, MissingNumbers::SetMerge.new(5)
  end
  it 'Should return nil if there is no left mertge' do
    obj = MissingNumbers::SetMerge.new(5)
    merge =  MissingNumbers::SetMerge.new(2)
    assert_nil obj.left_merge(merge)
  end
  it 'Should return nil if there is no right merge' do
    obj = MissingNumbers::SetMerge.new(5)
    merge =  MissingNumbers::SetMerge.new(10)
    assert_nil obj.right_merge(merge)
  end
  it 'Should implement left merge if it is time for it' do
    obj = MissingNumbers::SetMerge.new(5)
    merge =  MissingNumbers::SetMerge.new(4)
    assert obj.left_merge(merge)
    assert_equal 5, obj.max
    assert_equal 6, obj.next_max
    assert_equal 4, obj.min
    assert_equal 3, obj.next_min
  end
  it 'Should implement right merge it it is time for it' do
    obj = MissingNumbers::SetMerge.new(5)
    merge =  MissingNumbers::SetMerge.new(6)
    assert obj.right_merge(merge)
    assert_equal 6, obj.max
    assert_equal 7, obj.next_max
    assert_equal 5, obj.min
    assert_equal 4, obj.next_min
    
  end
  it "Should return nil if left join with nil" do
    obj = MissingNumbers::SetMerge.new(5)
    assert_nil obj.left_merge(nil)
  end
  it "Should return nil if right join with nil" do
    obj = MissingNumbers::SetMerge.new(5)
    assert_nil obj.right_merge(nil)
  end
end