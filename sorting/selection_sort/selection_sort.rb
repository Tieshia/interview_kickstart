$INPUT = [2,5,4,10,7]

def selection_sort(arr)
    # Write your code here.
    for i in (0...arr.length) do
        minValue = arr[i]
        minIndex = i
        
        for j in (i+1...arr.length) do
            if arr[j] < minValue
                minValue = arr[j]
                minIndex = j
            end
            
        end
        
        arr[i], arr[minIndex] = arr[minIndex], arr[i]
    end
    puts arr
    return arr
end

selection_sort($INPUT)