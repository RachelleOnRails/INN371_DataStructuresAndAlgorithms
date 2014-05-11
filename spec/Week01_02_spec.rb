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
