require_relative '../lib/Week01_04'

describe Week01_04 do

  # Success cases
  it('Single value') { Week01_04.call([1]).should == 1  }
  it('List of valid values') { Week01_04.call([17, 42, 11, 19, 35]).should == 42 }
  it('Includes invalid float') { Week01_04.call([17, 42, 11, 19, 98.5, 35]).should == 42 }
  it('Includes invalid character') { Week01_04.call([17, 42, 11, 19, 'hello', 35]).should == 42 }

end
