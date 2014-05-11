require_relative '../lib/Week01_02'

describe Week01_02 do

  # Success cases
  it('1') { Week01_02.call(1).should  == 1   }
  it('1') { Week01_02.call(2).should  == 4   }
  it('4') { Week01_02.call(4).should  == 16  }
  it('6') { Week01_02.call(30).should == 900 }

  # Failure cases
  it('float') { expect { Week01_02.call(3.14159) }.to raise_error(InvalidInput) }
  it('-10')   { expect { Week01_02.call(-10) }.to raise_error(InvalidInput) }
  it('0')     { expect { Week01_02.call(0) }.to raise_error(InvalidInput) }
  it('a')     { expect { Week01_02.call('a') }.to raise_error(InvalidInput) }

end



# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the first N odd integers.
# For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.
