require 'set'

$INPUT = [7,9,1,3,9,5,0,5,2,-1]

def three_sum(numbers, target)
    numbers = numbers.sort
    result = Set.new

    for i in (0..numbers.length - 1)
        j = i + 1
        k = numbers.length - 1

        while j < k
            pair_sum = numbers[j] + numbers[k]
            triplet_complement = target - numbers[i]

            if pair_sum == triplet_complement
                result.add([numbers[i], numbers[j], numbers[k]].to_s)
                k -= 1
            elsif pair_sum > triplet_complement
                k -= 1
            else
                j += 1
            end
        end
    end

    return result.to_a
end

puts three_sum($INPUT, 10)