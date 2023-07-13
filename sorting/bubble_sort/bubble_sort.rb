$INPUT = [2,5,4,10,7]

def bubble_sort(arr)
    last_index = arr.length - 1
    for i in (0...last_index) do
        for j in last_index.downto(i + 1) do
            if arr[j - 1] > arr[j]
                arr[j - 1], arr[j] = arr[j] , arr[j - 1] 
            end
        end
    end
    puts arr
    return arr
end

bubble_sort($INPUT)