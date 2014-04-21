INN371 Data Structures and Algorithms

I plan to work through the weekly tutorial exercises and complete each one in Ruby.

Week One
========
1. Write a program that reads in a positive integer N and then calculates and displays the sum of the numbers from 1 to N.

2. Write a program that reads in a positive integer N and then calculates and displays the sum of the first N odd integers. For example, if N is 4, your program should display the value 16, which is 1 + 3 + 5 + 7.

3. Write a program that converts a distance in metres to the corresponding distance in feet and inches. The conversion factors needed are:
1 inch = 0.0254 metres
1 foot = 12 inches

4. Write a program that reads in a list of positive integers from the user until the user enters the value 0 (this stopping value is known as a sentinel value). When the sentinel appears, your program should display the largest value in the list, as illustrated in the following sample run:

This program finds the largest integer in a list. Enter 0 to signal the end of the list.
? 17
? 42
? 11
? 19
? 35
? 0
The largest value is 42

5. Using the DigitSum function from the while statement section of the lecture notes as a model, write a program that reads in an integer and then displays the number that has the same digits in the reverse order, as illustrated by this sample run:

This program reverses the digits in an integer.
Enter a positive integer: 123456789
The reversed number is 987654321

To make sure your program can handle integers as large as the one shown in the example, use the type long instead of int in your program.

6. The German mathematician Leibniz (1646 – 1716) discovered the rather remarkable fact that the mathematical constant can be computed using the following mathematical relationship:

pi/4 ~= 1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 + ...

The formula to the right of the equal sign represents an infinite series and each fraction represents a term in that series.

Write a program that calculates an approximation of consisting of the first 10,000 terms in Leibniz’s series.
