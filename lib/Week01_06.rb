# The German mathematician Leibniz (1646 – 1716) discovered the rather remarkable fact that
# the mathematical constant pi can be computed using the following mathematical relationship:

# pi/4 ~= 1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 + ...

# The formula to the right of the equal sign represents an infinite series 
# and each fraction represents a term in that series.

# Write a program that calculates an approximation of consisting of the first 10,000
# terms in Leibniz’s series.

result = 0
10000.times do |n|
	odd = (n * 2) + 1
	if n%2 == 0
		result += (1.0/odd)
	else
		result -= (1.0/odd)
	end
	result
end

puts "The result is #{result}"