require './test/test_helper.rb'
describe 'SetMerge' do
  before do
  end
  it 'Should get diging as argument' do
    assert_kind_of Object, MissingNumbers::SetMerge.new(5)
  end
end