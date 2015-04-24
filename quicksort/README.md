#Quicksort

This is a Ruby implementation of the in-place quicksort algorithm.

## Algorithm

- Select pivot in middle of array (can also select randomly, but expensive).
- Swap pivot with last element of array.
- Begin partitioning by setting left and right pointers at front (index = 0) and end (index = length - 1).
- Move left pointer until it reaches number greater than pivot or overlaps right pointer.
- Move right pointer until it reaches number less than pivot or overlaps left pointer.
- Swap elements between pointers.
- Continue moving left pointer to right and right pointer to left until they cross.
- At this point, swap the pivot (stored as last element of array) with element at left pointer. Everything to the left of the pointer is less than the pivot, and everything to the right of the pointer is greater.
- Call quicksort on the subarray to the left of the pivot.
- Call quicksort on the subarray to the right of the pivot.
