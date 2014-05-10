# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.
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

class Week01_01
  def self.get_sum(n)
    (1..n).inject(0) { |sum, x| sum += x }
  end
end

n = get_input
puts "The integer is #{n}"
validate_input(n)
sum = Week01_01::get_sum(n.to_i)
puts "The sum is #{sum}"
