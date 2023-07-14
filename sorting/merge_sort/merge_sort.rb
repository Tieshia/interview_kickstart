$INPUT = [5, 8, 3, 9, 4, 1, 7]

def merge_sort(arr)
    helper(arr, 0, arr.length - 1)
    puts "arr #{arr}"
    return arr
end

def helper(arr, start, final)
    # Leaf worker
    return if start == final
    
    # Internal node worker
    mid = (start + final) / 2
    helper(arr, start, mid)
    helper(arr, mid + 1, final)

    # merge the two sorted halves
    i = start
    j = mid + 1

    aux = Array.new((final - start), nil)
    aux_pointer = 0

    while i <= mid && j <= final do
        if arr[i] <= arr[j]
            aux[aux_pointer] = arr[i]
            aux_pointer += 1
            i += 1
        else
            aux[aux_pointer] = arr[j]
            aux_pointer += 1
            j += 1
        end
    end

    # gather phase
    while i <= mid do
        aux[aux_pointer] = arr[i]
        aux_pointer += 1
        i += 1
    end

    while j <= final do
        aux[aux_pointer] = arr[j]
        aux_pointer += 1
        j += 1
    end

    arr[start..final] = aux
    return
end

merge_sort($INPUT)