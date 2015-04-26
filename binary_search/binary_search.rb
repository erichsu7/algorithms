class Array
  def binary_search_iterative(value)
    low = 0
    high = self.length - 1

    while low <= high
      mid = (low + high) / 2
      puts mid
      if value < self[mid]
        high = mid - 1
      elsif value > self[mid]
        low = mid + 1
      else
        return mid
      end
    end

    nil
  end

end

array = (1..10).to_a
p array
puts array.binary_search_iterative(5)
