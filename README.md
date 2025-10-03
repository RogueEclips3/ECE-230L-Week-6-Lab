# Number Theory: Addition

By Joshua Richmond and Dylan Duljkovic

## Lab Summary

In this lab, we learned how to create two simple binary adders: one that can add two bits together,
and one that can add three bits together, which we can then extend to adding two any-sized numbers.

## Lab Questions

### 1 - How might you add more than two bits together?

You can add more than two bits together the same way you would add more than two digits together in
a base-10 number system: by taking advantage of a carry digit. Once you add two bits together, you can
add a third one by overflowing to the carry place. If the carry place overflows, you can add another
carry place. This continues indefinitely.

### 2 - What is the importance of the XOR gate in an adder?

The XOR gate in an adder specifically tests whether an odd number of inputs are on. This is very useful
as it is used in the normal sum's place. Due to the workings of a base-2 number system, if an odd number
of inputs are on, then the sum's place is on.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

Assuming there is no carry input, the largest number a two-bit adder will add up to is 110 in binary, or
6 in base-10. If there is a carry input, that just increments the highest number to 111 in binary, or
7 in base-10. If it goes over, that will bring the 8's place into account. The only case where you would
get to the 8's place is if you have a three-bit or higher adder.