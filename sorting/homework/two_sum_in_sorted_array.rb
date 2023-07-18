$INPUT = [1, 2, 3, 5, 10]
# "target": 7

def two_sum_in_sorted_array(numbers, target)
    # sorted -> 2 pointer pass

    i = 0
    j = numbers.length - 1

    while i < j
        if numbers[j] == target - numbers[i]
            return [i,j]
        elsif numbers[j] > target - numbers[i]
            j -= 1
        else
            i += 1
        end
    end

    return [-1,-1]
end

puts two_sum_in_sorted_array($INPUT, 7)