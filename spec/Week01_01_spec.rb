require_relative '../lib/Week01_01'

describe Week01_01 do

  # Success cases
  it('1') { Week01_01.get_sum(1).should == 1  }
  it('2') { Week01_01.get_sum(2).should == 3  }
  it('6') { Week01_01.get_sum(6).should == 21 }

  # Failure cases
  it('float') { expect { Week01_01.get_sum(3.14159) }.to raise_error(RuntimeError) }
  it('-10')   { expect { Week01_01.get_sum(-10) }.to raise_error(RuntimeError) }
  it('0')     { expect { Week01_01.get_sum(0) }.to raise_error(RuntimeError) }
  it('a')     { expect { Week01_01.get_sum('a') }.to raise_error(RuntimeError) }

end
