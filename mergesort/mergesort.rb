class Array
  def mergesort
    return self if length <= 1
    result = []

    midpoint = length / 2
    left = self[0...midpoint].mergesort
    right = self[midpoint..-1].mergesort

    until left.empty? || right.empty?
      if left[0] < right[0]
        result << left.shift
      else
        result << right.shift
      end
    end

    result + left + right
  end
end
