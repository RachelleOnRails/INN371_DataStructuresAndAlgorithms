# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.

def get_input
	puts "Enter a positive integer: "
	STDOUT.flush
	gets.chomp.to_i
end

def get_sum (integer)
	result = 0
	(integer+1).times do |n|
		result += n
	end
	result
end

integer = get_input
puts "The integer is #{integer}"
sum = get_sum(integer)
puts "The sum is #{sum}"
