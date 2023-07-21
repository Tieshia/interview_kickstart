$INPUT = [1, 2, 3, 4]

def even_and_odd(arr)
    pivot_idx = rand(0..arr.length - 1)
    arr[0], arr[pivot_idx] = arr[pivot_idx], arr[0]

    # even numbers appear before odd ones
    evens = 0
    
    for odds in (1..arr.length - 1)
        if arr[odds] % 2 == 0
            evens += 1
            arr[odds], arr[evens] = arr[evens], arr[odds]
        end
    end

    arr[0], arr[evens] = arr[evens], arr[0]

    return arr
end

puts even_and_odd($INPUT)