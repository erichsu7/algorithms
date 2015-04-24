class Array
  def quicksort(min_idx = 0, max_idx = length - 1)
    return if min_idx > max_idx

    pivot_idx = (min_idx + max_idx) / 2
    pivot = self[pivot_idx]

    self[pivot_idx], self[max_idx] = self[max_idx], self[pivot_idx]

    left = min_idx
    right = max_idx

    until left >= right
      until self[left] > pivot || left >= right
        left += 1
      end
      until self[right] < pivot || left >= right
        right -= 1
      end

      self[left], self[right] = self[right], self[left]
    end

    self[left], self[max_idx] = self[max_idx], self[left]

    quicksort(min_idx, left - 1)
    quicksort(left + 1, max_idx)
    self
  end
end
