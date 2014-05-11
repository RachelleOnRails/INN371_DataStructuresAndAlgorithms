# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.

class InvalidInput < StandardError
end

class Week01_01

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

  def self.calculate(n)
    (1..n).inject(0) { |sum, x| sum + x }
  end

end

if __FILE__ == $0
  n = Week01_01.get_input
  begin
    Week01_01.call(n)
  rescue InvalidInput
    puts "Invalid input. Only positive integers are accepted."
  end
end
