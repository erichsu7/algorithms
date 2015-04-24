#Mergesort

This is a Ruby implementation of the mergesort algorithm. Array is sorted in `O(nlogn)` time with `O(n)` memory utilization due to the additional result array.

## Algorithm

- Calculate the midpoint of the array, and use that to divide the array into two halves.
- Recursively call mergesort on each half, stopping at the base case when there are 0 or 1 elements in the half.
- Shift the lesser first element from each sorted half into a result array.
- Repeat the comparison and shift until one array is empty.
- Return the result array concatenated with the remains of the left and right halves.
