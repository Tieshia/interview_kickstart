$INPUT = [5, 8, 3, 9, 4, 1, 7]
def counting_sort(arr)
    min = 0
    max  = 10
    counts_size = max - min
    counts = Array.new(counts_size, 0)

    for i in (0..arr.length - 1)
        counts[arr[i]] += 1
    end

    sorted = []

    for j in (0..counts.length - 1)
        counts[j].times { sorted.append(j) }
    end
    
    arr = sorted

    puts "final arr: #{arr}"
    return arr
end

counting_sort($INPUT)