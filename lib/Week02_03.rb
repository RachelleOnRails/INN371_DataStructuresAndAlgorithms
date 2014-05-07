# In the third century B.C., the Greek astronomer Eratosthenes developed an algorithm
# for finding all the prime numbers up to some upper limit N.
#
# To apply the algorithm, you start by writing down a list of the integers between 2 and N.
# For example, if N were 20, you would begin by writing down the following list:
#
# 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
#
# Next you circle the first number in the list, indicating that you have found a prime.
# You then go through the rest of the list and cross off every multiple of the value
# you have just circled, since none of those multiples of the initial step value can be prime.
# Thus after executing the first step of the algorithm, you will have circled the number 2 and
# crossed off all multiples of 2.
#
# From this point, you simply repeat the process by circling the first number in the list
# that is neither crossed off nor circled, and then crossing off its multiples.
#
# In this example, you would circle 3 as a prime and cross off all multiples of 3
# in the rest of the list.
#
# Eventually, every number in the list will either be circled or crossed out.
#
# The circled numbers are the primes, the crossed-out numbers are not prime (composite numbers).
# This algorithm for generating a list of primes is called the Sieve of Eratosthenes.

range = (1..20).to_a
primes = Hash[range.map {|x| x == 1 ? [x,false] : [x,true]}]

primes.each do |key,value|
	if primes[key] == false
		# do nothing...
		# has been set in an earlier iteration so it (and any multiples) have already been hit
	else
	  (key..range.length).step(key).each do |index|
	  	if index == key
	  		# do nothing
	  	elsif primes[index] == false
	  		# do nothing
	  	else
				primes[index] = false
	  	end
		end
  end
end
