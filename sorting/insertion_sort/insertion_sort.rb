$INPUT = [5, 8, 3, 9, 4, 1, 7]

def insertion_sort(arr)
    for i in (0..arr.length - 1) do
        temp = arr[i]
        j = i - 1

        while j >= 0 && arr[j] > temp do
            arr[j + 1] = arr[j]
            j -= 1
        end

        arr[j + 1] = temp
    end
    puts arr
    return arr
end

insertion_sort($INPUT)
