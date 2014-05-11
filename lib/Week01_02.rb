# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the first N odd integers.
# For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.

class InvalidInput < StandardError
end

class Week01_02

  def self.valid?(input)
    input.to_s[/^[1-9]\d*$/]
  end

  def self.call(number)
    if valid? number
      sum = calculate(number.to_i)
      puts "The sum is #{sum}"
      sum
    else
      raise InvalidInput
      # puts "Invalid input. Only positive integers are accepted."
    end
  end

  def self.get_input
    puts "Enter a positive integer: "
    STDOUT.flush
    gets.chomp
  end

  def self.calculate (n)
    result = 0
    n.to_i.times do |x|
      result += ((x * 2) + 1)
    end
    result
  end

end

if __FILE__ == $0
  n = Week01_02.get_input
  begin
    Week01_02.call(n)
  rescue InvalidInput
    puts "Invalid input. Only positive integers are accepted."
  end
end
