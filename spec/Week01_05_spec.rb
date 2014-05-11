require_relative '../lib/Week01_05'

describe Week01_05 do

  # Success cases
  it('zero')      { Week01_05.call(0).should         == 0         }
  it('1')         { Week01_05.call(1).should         == 1         }
  it('200')       { Week01_05.call(200).should       == 2         }
  it('123456789') { Week01_05.call(123456789).should == 987654321 }

  # Failure cases
  it('float') { expect { Week01_05.call(3.14159) }.to raise_error(InvalidInput) }
  it('a')     { expect { Week01_05.call('a') }.to raise_error(InvalidInput) }
  it('-21')   { expect { Week01_05.call('-21') }.to raise_error(InvalidInput) }

end
