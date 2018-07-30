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
end