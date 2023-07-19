# Given a list of numbers, count the number of triplets having a sum less than a given target.
require 'set'

$INPUT = [5, 0, -1, 3, 2] # target = 4

def three_sum_smaller(arr, target)
    arr = arr.sort
    result = Set.new
    # add indices to result instead of values to account for duplicates?
    for i in (0..arr.length - 1)
        j = i + 1
        k = arr.length - 1

        while j < k
            sum = arr[j] + arr[k]
            target_complement = target - arr[i]
            if sum < target_complement
                result.add("#{arr[i]}, #{arr[j]}, #{arr[k]}")
                k -= 1
            elsif sum == target_complement
                k -= 1
            else
                j += 1
            end
        end
    end
    return result.size
end

puts three_sum_smaller($INPUT, 4)