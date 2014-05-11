# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the first N odd integers.
# For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.

def get_input
	puts "Enter a positive integer: "
	STDOUT.flush
	gets.chomp
end

def validate_input(n)
  # Invalid inputs:
  raise("Only positive integers are accepted. Not #{n}") if n.to_i == 0 || n.to_i < 0
  raise("No floats. Only integers are accepted. Not #{n}") unless n.to_f / n.to_i == 1
end

def get_sum (n)
	result = 0
	n.to_i.times do |x|
		result += ((x * 2) + 1)
	end
	result
end

n = get_input
puts "The input is #{n}"
validate_input(n)
sum = get_sum(n.to_i)
puts "The sum is #{sum}"
