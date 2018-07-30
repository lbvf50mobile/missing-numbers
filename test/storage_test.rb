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
  it "shold not Extend left join when it's no time for it" do
    @storage.list = [MissingNumbers::SetMerge.new(5)]
    assert_nil @storage.extend_element(index: 0, number: 2)
    @storage.list = [MissingNumbers::SetMerge.new(5)]
    assert_nil @storage.extend_element(index: 0, number: 7)
  end 
  it "firse element left join check will return nil" do
    @storage.list = [1,2]
    assert_nil @storage.left_join_check?(index: 0)
  end
  it "last element in right join will return nil" do
    @storage.list = [1,2]
    assert_nil @storage.right_join_check?(index: 1)
  end
  it "join works" do
    @storage.insert(5)
    @storage.insert(7)
    @storage.insert(6)
    assert_equal 1, @storage.list.size
    assert_equal 5, @storage.list[0].min
    assert_equal 7, @storage.list[0].max
  end
  it "insert left" do
    @storage.insert(5)
    @storage.insert(2)
    assert_equal 2, @storage.list.size
    assert_equal 2, @storage.list[0].min
    assert_equal 2, @storage.list[0].max
  end
  it "insert begwen existed element" do
    @storage.insert(5)
    @storage.insert(10)
    @storage.insert(7)
    assert_equal 3, @storage.list.size
    assert_equal 7, @storage.list[1].min
    assert_equal 7, @storage.list[1].max
  end
  it "add at the bottom at the end" do
    @storage.insert(5)
    @storage.insert(10)
    @storage.insert(7)
    @storage.insert(144)
    assert_equal 4, @storage.list.size
    assert_equal 144, @storage.list[-1].min
    assert_equal 144, @storage.list[-1].max
  end
  it "calulating gaps" do
    @storage.insert(2)
    assert_equal [1], @storage.gaps
  end
  it "calulating gaps 2" do
    @storage.insert(2)
    @storage.insert(4)
    assert_equal [1,3], @storage.gaps
  end
  it "calulating gaps 3" do
    @storage.insert(2)
    @storage.insert(4)
    @storage.insert(6)
    assert_equal [1,3,5], @storage.gaps
  end
  it "calulating gaps 3.5" do
    @storage.insert(2)
    @storage.insert(5)
    @storage.insert(7)
    assert_equal [1,3,4,6], @storage.gaps
  end
  it "calulating gaps 3.5 start from 1" do
    @storage.insert(1)
    @storage.insert(5)
    @storage.insert(7)
    assert_equal [2,3,4,6], @storage.gaps
  end
end