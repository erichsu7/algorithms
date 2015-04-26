class Array
  def binary_search(value)
    binary_search_iterative(value)
  end

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

  def binary_search_recursive(value)
    return nil if self.length < 1

    mid = length / 2
    case value <=> self[mid]
    when -1
      return self[0...mid].binary_search_recursive(value)
    when 0
      return mid
    when 1
      return mid + self[mid + 1..-1].binary_search_recursive(value) + 1
    end

    nil
  end
end
