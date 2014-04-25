# Using the DigitSum function from the while statement section of the lecture notes as a model,
# write a program that reads in an integer and then
# displays the number that has the same digits in the reverse order,
# as illustrated by this sample run:

# This program reverses the digits in an integer.
# Enter a positive integer: 123456789
# The reversed number is 987654321

# To make sure your program can handle integers as large as the one shown in the example,
# use the type long instead of int in your program.

def get_input
	puts "Enter an integer: "
	STDOUT.flush
	gets.chomp
end

input = get_input
reverse = input.reverse

puts "The input is #{input}"
puts "The reverse is #{reverse}"
