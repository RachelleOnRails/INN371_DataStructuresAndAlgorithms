require_relative '../lib/Week01_02'

describe Week01_02 do

  # Success cases
  it('1') { Week01_01.get_sum(1).should  == 1   }
  it('1') { Week01_01.get_sum(2).should  == 1   }
  it('4') { Week01_01.get_sum(4).should  == 16  }
  it('6') { Week01_01.get_sum(30).should == 225 }

  # Failure cases
  it('float') { expect { Week01_01.get_sum(3.14159) }.to raise_error(RuntimeError) }
  it('-10')   { expect { Week01_01.get_sum(-10) }.to raise_error(RuntimeError) }
  it('0')     { expect { Week01_01.get_sum(0) }.to raise_error(RuntimeError) }
  it('a')     { expect { Week01_01.get_sum('a') }.to raise_error(RuntimeError) }

end



# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the first N odd integers.
# For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.
