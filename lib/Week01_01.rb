# Write a program that reads in a positive integer N and then calculates and displays
# the sum of the numbers from 1 to N.
class Week01_01
  def self.get_sum(n)
    sum = 0
    (n+1).times do |x|
      sum += x
    end
    sum
  end
end