require_relative '../lib/Week01_03'

describe Week01_03 do

  # Success cases
  it('0') { Week01_03.call(0).should  == [0, 0] }
  it('1') { Week01_03.call(1).should  == [3, 3.37008] }
  it('23.4') { Week01_03.call(23.4).should  == [76, 9.25984] }

  # Failure cases
  it('-10')   { expect { Week01_03.call(-10) }.to raise_error(InvalidInput) }
  it('a')     { expect { Week01_03.call('a') }.to raise_error(InvalidInput) }

end
