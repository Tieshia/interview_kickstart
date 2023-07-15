$INPUT = [5, 8, 3, 9, 4, 1, 7]
def quick_sort(arr)
    helper(arr, 0, arr.length - 1)
    puts "arr: #{arr}"
    return arr
end

def helper(arr, start_idx, end_idx)
    # leaf worker
    return if start_idx >= end_idx

    # internal node worker
    # randomize pivot
    pivot_idx = rand(start_idx..end_idx)

    ## LOMUTO'S PARTITIONING
    smaller = start_idx
    
    for bigger in (start_idx + 1..end_idx)
        if arr[bigger] <= arr[start_idx]
            smaller += 1
            arr[bigger], arr[smaller] = arr[smaller], arr[bigger]
        end
    end

    arr[start_idx], arr[smaller] = arr[smaller], arr[start_idx]

    helper(arr, start_idx, smaller - 1)
    helper(arr, smaller + 1, end_idx)
end

quick_sort($INPUT)