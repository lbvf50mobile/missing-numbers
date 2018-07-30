require './test/test_helper.rb'
describe 'Storage' do
  before do
  end
  it 'New need create new object' do
    assert_kind_of Object, MissingNumbers::Storage.new
  end
end