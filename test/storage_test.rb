require './test/test_helper.rb'
describe 'Storage' do
  before do
    @storage = MissingNumbers::Storage.new
  end
  it 'New need create new object' do
    assert_kind_of Object, MissingNumbers::Storage.new
  end
  it "it should have list value that return the list of elements" do
    assert_kind_of Array, @storage.list
  end
  it "should insert first element when it's empty list" do
    number = 5 
    @storage.insert(number)
    assert_equal 1, @storage.list.size
    assert MissingNumbers::SetMerge.new(number).min == @storage.list[0].min
  end
end