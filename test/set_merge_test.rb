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
end