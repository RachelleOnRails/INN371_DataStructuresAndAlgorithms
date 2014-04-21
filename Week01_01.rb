# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.

puts "Enter a positive integer: "
STDOUT.flush
integer = gets.chomp.to_i
puts "The integer is #{integer}"
sum = 0
(integer+1).times do |n|
	sum = sum + n
end
puts "The sum is #{sum}"
