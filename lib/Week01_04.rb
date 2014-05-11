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

  def self.valid?(input)
    input.to_s[/^[1-9]\d*$/] # positive integers only (not zero)
  end

  def self.call(inputs)
    new_inputs = []
    inputs.each do |input|
      new_inputs << Week01_04.valid?(input)
    end

    puts 'Invalid input ignored. Only positive integers are accepted.' unless new_inputs.size == new_inputs.compact.size
    inputs = new_inputs.compact

    greatest = find_greatest (inputs)
    puts "The greatest is #{greatest}"
    greatest
  end

  def self.get_input
    puts "Enter a positive integer (or zero to exit): "
    STDOUT.flush
    gets.chomp
  end

  def self.find_greatest (inputs)
    greatest = 0

    inputs.each do |n|
      n = n.to_i
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
    break if new == '0'
    inputs << Week01_04.valid?(new)
    puts 'Invalid input ignored. Only positive integers are accepted.' unless inputs.size == inputs.compact.size
    inputs.compact
  end

  Week01_04.call(inputs)

end
