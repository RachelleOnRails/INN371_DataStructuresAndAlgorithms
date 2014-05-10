# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.
class Week01_01
  def self.get_sum(n)

    # Invalid inputs:
    raise("Only positive integers are accepted. Not #{n}") if n.to_i == 0 || n < 0
    raise("No floats. Only integers are accepted. Not #{n}") unless n / n.to_i == 1

    (1..n).inject(0) { |sum, x| sum += x }

  end
end