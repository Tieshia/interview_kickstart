$INPUT = [5, 8, 3, 9, 4, 1, 7]

def heap_sort(arr)
    build_heap(arr)
    puts "built heap: #{arr}"

    start_idx = 1
    end_idx = arr.length - 1

    while start_idx <= end_idx
        arr[start_idx], arr[end_idx] = arr[end_idx], arr[start_idx]
        
        puts "heapify arr: #{arr}, start: #{start_idx}"
        heapify(arr, start_idx)

        start_idx += 1
        end_idx -=1
    end
    puts "final arr: #{arr}"
    return arr[1..arr.length-1]
end

def build_heap(arr)
    arr.unshift(nil)
    parent_idx = arr.length / 2
    parent = arr[parent_idx]

    while parent_idx >= 1
        heapify(arr, parent_idx)
        parent_idx -= 1
    end

    return arr
end

def heapify(arr, parent_idx)
    return if parent_idx < arr.length / 2

    parent = arr[parent_idx]
    right_child_idx = parent_idx * 2

    left_child_idx = right_child_idx - 1
    left_child = arr[left_child_idx]
    
    if left_child > parent
        arr[parent_idx], arr[left_child_idx] = arr[left_child_idx], arr[parent_idx]
        heapify(arr, left_child_idx)
    end
    
    if right_child_idx < arr.length
        right_child = arr[right_child_idx]

        if right_child > parent
            arr[parent_idx], arr[right_child_idx] = arr[right_child_idx], arr[parent_idx]
            heapify(arr, right_child_idx)
        end
    end
end

heap_sort($INPUT)