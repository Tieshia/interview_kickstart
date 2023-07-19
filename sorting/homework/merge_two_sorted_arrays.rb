$INPUT= {
    "first": [1, 3, 5],
    "second": [2, 4, 6, 0, 0, 0]
}

def merge_sorted_arrays(arr1, arr2)
    result = helper(arr1, arr2, 0, 0)
    return result
end

def helper(arr1, arr2, pointer1, pointer2)
    puts "arr1: #{arr1}, arr2: #{arr2}, pointer1: #{pointer1}, pointer2: #{pointer2}"
    aux = []
    # aux_pointer = 0

    i = pointer1
    j = pointer2

    while i < arr1.length && j < arr2.length
        if arr1[i] <= arr2[j]
            aux << arr1[i]
            i += 1
            # aux_pointer += 1
        else
            aux << arr2[j]
            j += 1
        end
    end

    puts "aux after zipper: #{aux}"

    while i < arr1.length && arr1[i] > 0
        aux << arr1[i]
        i+= 1
    end

    while j < arr2.length && arr2[j] > 0
        aux << arr2[j]
        j+= 1
    end

    puts "aux after gather #{aux}"

    if arr1.length > arr2.length
        arr1 = aux
    else
        arr2 = aux
    end
end

puts merge_sorted_arrays([1, 3, 5], [2, 4, 6, 0, 0, 0])
