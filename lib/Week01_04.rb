# Write a program that reads in a list of positive integers from the user until
# the user enters the value 0 (this stopping value is known as a sentinel value).
# When the sentinel appears, your program should display the largest value in the list, as illustrated in the following sample run:

# This program finds the largest integer in a list. Enter 0 to signal the end of the list.
# ? 17
# ? 42
# ? 11
# ? 19
# ? 35
# ? 0
# The largest value is 42

class InvalidInput < StandardError
end

class Week01_04

  def self.valid?(inputs)
    inputs.each do |input|
      if input.to_s[/^[1-9]\d*$/] == 0
        return nil
      end
    end
  end

  def self.call(inputs)
    if valid? inputs
      greatest = find_greatest (inputs)
      puts "The greatest is #{greatest}"
      greatest
    else
      raise InvalidInput
    end
  end

  def self.get_input
    puts "Enter a positive integer (or zero to exit): "
    STDOUT.flush
    gets.chomp.to_i
  end

  def self.find_greatest (inputs)
    greatest = 0

    inputs.each do |n|
      greatest = n if n > greatest
    end
    greatest
  end

end

if __FILE__ == $0
  inputs = []
  new = -1

  loop do
    new = Week01_04.get_input
    break if new == 0
    inputs << new
  end

  begin
    Week01_04.call(inputs)
  rescue InvalidInput
    puts "Invalid input. Only positive integers are accepted."
  end
end
