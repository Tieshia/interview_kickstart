$INPUT = [5, 1, 10, 3, 2]

def kth_largest_in_an_array(arr, k)
    helper(arr, 0, arr.length - 1, arr.length - k)
    return arr[arr.length - k]
end

def helper(arr, start_idx, end_idx, index)
    # base case
    return if start_idx == end_idx

    # Lomuto's
    pivot_idx = rand(start_idx..end_idx)
    arr[start_idx], arr[pivot_idx] = arr[pivot_idx], arr[start_idx]

    orange = start_idx #orange half (smaller)
    
    for green in (start_idx + 1..end_idx) # green half (larger)
        if arr[green] <= arr[start_idx] # arr value less than pivot
            # add to orange by increasing space for orange and swapping
            orange += 1
            arr[green] , arr[orange] = arr[orange], arr[green]
        end # otherwise, green increases automatically with while loop
    end

    # put partition value in proper place in array
    arr[start_idx], arr[orange] = arr[orange], arr[start_idx]

    # select which partition to continue sorting
    return if orange == index # parition is kth largest element

    if index < orange # k in smaller side
        helper(arr, start_idx, orange - 1, index)
    else #k in larger side
        helper(arr, orange + 1, end_idx, index)
    end
end

puts kth_largest_in_an_array($INPUT, 2)
# output should be 5