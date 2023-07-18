$INPUT = [50, 21, 101, 1, 13, 234, 345]

def radix_sort(arr)
    count_keys = Array.new(10, [])
    puts "count_keys: #{count_keys}"
    
    for i in (0..1)
        puts "place: 10^#{i}"
        sorted = []

        # get 10 ^ i digit for each element in the array
        for j in (0..arr.length - 1)
            num = arr[j]
            mod = 10**(i + 1)
            divisor = 10**i
            digit = num % mod / divisor
            puts "num: #{num}, digit: #{digit}"
            puts "count_keys before: #{count_keys}"
            puts "count_keys[digit] before: #{count_keys[digit]}"
            count_keys[digit] << num
            puts "count_keys[digit] after: #{count_keys[digit]}"
            puts "count_keys after: #{count_keys}"
        end

        # put sorted values for each digit place in the array
        for k in (0..count_keys.length - 1)
            # remove first element from key array until empty
            while count_keys[k].length > 0
                value_to_add = count_keys[k].shift(1)[0]
                sorted.append(value_to_add)
            end
        end

        arr = sorted
    end
    puts "final arr: #{arr}"
    return arr
end

radix_sort($INPUT)