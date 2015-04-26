require_relative '../../data_structures/max_heap/max_heap'

class MaxHeap
  def swap_max_to_end
    array[0], array[count - 1] = array[count - 1], array[0]
  end
end

class Array
  def heapsort!
    max_heap = MaxHeap.new(self)

    until max_heap.count == 0
      max_heap.swap_max_to_end
      max_heap.count -= 1
      max_heap.sift_down(0)
    end

    max_heap.array
  end

  def heapsort
    self.dup.heapsort!
  end
end
