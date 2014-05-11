# Using the DigitSum function from the while statement section of the lecture notes as a model,
# write a program that reads in an integer and then
# displays the number that has the same digits in the reverse order,
# as illustrated by this sample run:

# This program reverses the digits in an integer.
# Enter a positive integer: 123456789
# The reversed number is 987654321

# To make sure your program can handle integers as large as the one shown in the example,
# use the type long instead of int in your program.

class InvalidInput < StandardError
end

class Week01_05

  def self.valid?(input)
    input.to_s[/^[0-9]\d*$/] # all integers
  end

  def self.call(input)
    if valid? input
      reverse = reverse(input.to_s)
      puts "The input is #{input}"
      puts "The reverse is #{reverse}"
      reverse
    else
      raise InvalidInput
    end
  end

  def self.get_input
    puts "Enter an integer: "
    STDOUT.flush
    gets.chomp
  end

  def self.reverse (input)
    input.reverse.to_i
  end

end

if __FILE__ == $0
  n = Week01_05.get_input
  begin
    Week01_05.call(n)
  rescue InvalidInput
    puts "Invalid input. Only integers are accepted."
  end
end
