# Write a program that converts a distance in metres to the corresponding distance in feet and
# inches. The conversion factors needed are:
# 1 inch = 0.0254 metres
# 1 foot = 12 inches

def get_input
	puts "Enter a distance in metres: "
	STDOUT.flush
	gets.chomp.to_i
end

def convert_to_feet_and_inches (metres)
	inches = metres / 0.0254
	puts "In inches it is #{inches}"
	inches
end

metres = get_input
puts "The input is #{metres}"
sum = convert_to_feet_and_inches(metres)
puts "The sum is #{sum}"
