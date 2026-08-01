arr = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  n = arr.length
  count = 0
  n.times do
    count += 1
    m = 0
    until m == n - count
      if arr[m] > arr[m+1]
        arr[m],arr[m+1] = arr[m+1], arr[m]
      end
      m += 1
    end
  end
  p arr
end

bubble_sort(arr)