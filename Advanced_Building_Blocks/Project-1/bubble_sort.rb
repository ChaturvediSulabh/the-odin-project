class BubbleSort
  def bubble_sort(arr)
    sorted = true
    while sorted
      sorted = false
      (arr.length - 1).times do |i|
        (arr[i], arr[i + 1] = arr[i + 1], arr[i]; sorted = true) if arr[i] > arr[i + 1]
      end
    end
    arr
  end

  def bubble_sort_by(arr)
    i = 0
    while i < arr.length
      result = yield(arr[i], arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if result == -1
      i += 1
    end
    arr
  end
end

run = BubbleSort.new
print run.bubble_sort([4, 3, 78, 2, 0, 2])
puts ""
print run.bubble_sort_by(['hi', 'hello', 'hey']) { |left, right| left <=> right }