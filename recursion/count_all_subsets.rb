def count_all_subsets(n)
    if n == 0
        return 1
    else
        return 2 * count_all_subsets(n - 1)
    end
end

puts count_all_subsets(3)