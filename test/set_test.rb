require './test/test_helper.rb'
describe 'Set' do
  before do
  end
  it 'Create with digit argument' do
    assert_kind_of Object, MissingNumbers::Set.new(5)
 end
end