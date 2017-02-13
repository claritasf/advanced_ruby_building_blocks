These are some problems with Ruby, from The Odin Project's [curriculum](http://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks)

Project 1: Bubble Sort

In Bubble Sort each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.


1. 	Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology.

        > bubble_sort([4,3,78,2,0,2])
        => [0,2,2,3,4,78]

2. 	Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. If the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.

        > bubble_sort_by(["hi","hello","hey"]) do |left,right|
        >   left.length - right.length
        > end
        => ["hi", "hey", "hello"]


Project 2: Enumerable Methods

Create your own Enumerable methods


1.	Create #my_each, a method that is identical to #each but (obviously) does not use #each. You'll need to remember the yield statement. Make sure it returns the same thing as #each as well.

2.	Create #my_each_with_index in the same way.

3.	Create #my_select in the same way, though you may use #my_each in your definition (but not #each).

4.	Create #my_all? (continue as above)

5.	Create #my_any?

6.	Create #my_none?

7.	Create #my_count

8.	Create #my_map

9.	Create #my_inject

10.	Test your #my_inject by creating a method called #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40

11.	Modify your #my_map method to take a proc instead.

12.	Modify your #my_map method to take either a proc or a block. It won't be necessary to apply both a proc and a block in the same #my_map call since you could get the same effect by chaining together one #my_map call with the block and one with the proc. This approach is also clearer, since the user doesn't have to remember whether the proc or block will be run first. So if both a proc and a block are given, only execute the proc.


