def find_combinations(n, k)
    output = []
    temp = [0] * k

    k_combination(output, temp, 0, 0, n, k)

    return output
end

def k_combination(output, temp, index, start_val, end_val, k)
    puts "output: #{output}, temp: #{temp}, index: #{index}, start: #{start_val}, end: #{end_val}, k: #{k}"
    if index == k # index outside of the range of set k; add temp to output
        output << temp.dup
        return
    end

    for i in (start_val..end_val) # increase by next number not combined yet
        # end_val - i => checking to see if within range of n
        # k - index => within allowable set size
        if end_val - i >= k - index
            temp[index] = i + 1
            k_combination(output, temp, index + 1, i + 1, end_val, k)
        end
    end
end

puts "combos: #{find_combinations(6,6)}"