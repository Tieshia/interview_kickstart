$INPUT = [5, 3, 10, 45, 1]

def two_sum_in_array(numbers, target)
    checked = {}

    for i in (0..numbers.length - 1)
        if checked.has_key?(target - numbers[i])
            return [checked[target - numbers[i]], i]
        end

        checked[numbers[i]] = i
    end
    return [-1, -1]
end

puts two_sum_in_array($INPUT, 6)