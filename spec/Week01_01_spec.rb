require_relative '../lib/Week01_01'

describe Week01_01 do

  it '1' do
    Week01_01.get_sum(1).should == 1
  end

  it '2' do
    Week01_01.get_sum(2).should == 3
  end

  it '6' do
    Week01_01.get_sum(6).should == 21
  end
end
