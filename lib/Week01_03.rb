# Write a program that converts a distance in metres to the corresponding distance in feet and
# inches. The conversion factors needed are:
# 1 inch = 0.0254 metres
# 1 foot = 12 inches

def get_input
	puts "Enter a distance in metres: "
	STDOUT.flush
	gets.chomp.to_f
end

def convert_to_feet_and_inches (metres)
	total_inches = metres / 0.0254
	feet = total_inches.to_i / 12
	inches = total_inches % 12
	return feet, inches
end

metres = get_input
puts "The input is #{metres}"
result = convert_to_feet_and_inches(metres)
puts "The converted distance is #{result[0]} feet and #{result[1]} inches"
