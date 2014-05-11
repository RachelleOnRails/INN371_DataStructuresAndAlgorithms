require_relative '../lib/Week01_01'

describe Week01_01 do

  # Success cases
  it('1') { Week01_01.call(1).should == 1  }
  it('2') { Week01_01.call(2).should == 3  }
  it('6') { Week01_01.call(6).should == 21 }

  # Failure cases
  it('float') { expect { Week01_01.call(3.14159) }.to raise_error(InvalidInput) }
  it('-10')   { expect { Week01_01.call(-10) }.to raise_error(InvalidInput) }
  it('0')     { expect { Week01_01.call(0) }.to raise_error(InvalidInput) }
  it('a')     { expect { Week01_01.call('a') }.to raise_error(InvalidInput) }

end
