# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the first N odd integers.
# For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.

def get_input
	puts "Enter a positive integer: "
	STDOUT.flush
	gets.chomp.to_i
end

def get_sum (integer)
	result = 0
	integer.times do |n|
		result += ((n * 2) + 1)
	end
	result
end

integer = get_input
puts "The integer is #{integer}"
sum = get_sum(integer)
puts "The sum is #{sum}"
