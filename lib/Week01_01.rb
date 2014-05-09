# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.
class Week01_01
  def self.get_sum(n)
    (1..n).inject(0) { |sum, x| sum += x }
  end
end