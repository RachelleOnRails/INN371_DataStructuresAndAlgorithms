# 1. Enumeration
#
# a. Define an enumeration type Weekday whose elements are the days of the week.
#
# b. Write functions NextDay and PreviousDay that take a value of the type Weekday and
# return the day of the week that comes after or before the specified day, respectively.
# For the NextDay function, use the same pattern as presented in Lecture 2 – Slide 14.
# For the PreviousDay function you will need to consider what to do to ensure that
# the function returns a positive value.
# Note that there is no need to use an if statement here – consider the domain of the values
# the enumeration can take on and how you can ensure that the result will always remain in
# the domain of the enumeration.
#
# c. Write a function IncrementDay(startDay, delta) that returns the day of the week that
# comes delta days after startDay. Thus, IncrementDay(THURSDAY, 4) should return MONDAY.
# Your implementation of IncrementDay should work if the value of delta is negative, 
# in which case it should proceed backward in time.
# As with part (b), there is no need to use an if statement.

module Weekday
  MONDAY
  TUESDAY
  WEDNESDAY
  THURSDAY
  FRIDAY
  SATURDAY
  SUNDAY
end

flags = Weekday::MONDAY | Weekday::TUESDAY